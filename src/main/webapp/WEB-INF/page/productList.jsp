<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Product Management</title>
<link rel="stylesheet"
	href="<c:url value="/resource/bootstrap/css/bootstrap.min.css"/>">
<script src="<c:url value="/resource/js/jquery.js"/>"></script>
<script src="<c:url value="/resource/bootstrap/js/bootstrap.min.js"/>"></script>

<style>

}
</style>

</head>
<body>

<!-- 	navigation Bar -->
<%@ include file="navbar.jsp"%> 

	<div class="container">
		<h2>Product Management</h2>
		<p>The List of Products in our Database</p>
		<table class="table table-hover">
			<thead>
				<tr>
					<th>Product-Id</th>
					<th>Category</th>
					<th>Product-Name</th>
					<th>Product-Price</th>
					<th>Stock Unit</th>
					<th>Description</th>
					<th>Manufacturer</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${products}" var="prod">
				<tr>
				<td>${prod.productId}</td>
				<td>${prod.productCategory}</td>
				<td>${prod.productName}</td>
				<td>${prod.productPrice}</td>
				<td>${prod.unitStock}</td>
				<td>${prod.productDescription}</td>
				<td>${prod.productManufacturer}</td>
				</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
	
	<%@ include file="footer.jsp"%>

</body>
</html>