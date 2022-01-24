#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct sockaddr_in6 {void* sin6_port; } ;
struct sockaddr_in {void* sin_port; } ;
struct sockaddr {int sa_family; } ;

/* Variables and functions */
#define  AF_INET 129 
#define  AF_INET6 128 
 int RPCBIND_MAXUADDRLEN ; 
 void* FUNC0 (unsigned short) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,size_t const) ; 
 scalar_t__ FUNC2 (char*,int /*<<< orphan*/ ,struct sockaddr*,size_t const) ; 
 scalar_t__ FUNC3 (char*,int,unsigned long*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 char* FUNC5 (char*,char) ; 
 scalar_t__ FUNC6 (int) ; 

size_t FUNC7(const char *uaddr, const size_t uaddr_len,
			  struct sockaddr *sap, const size_t salen)
{
	char *c, buf[RPCBIND_MAXUADDRLEN + sizeof('\0')];
	unsigned long portlo, porthi;
	unsigned short port;

	if (uaddr_len > RPCBIND_MAXUADDRLEN)
		return 0;

	FUNC1(buf, uaddr, uaddr_len);

	buf[uaddr_len] = '\0';
	c = FUNC5(buf, '.');
	if (FUNC6(c == NULL))
		return 0;
	if (FUNC6(FUNC3(c + 1, 10, &portlo) != 0))
		return 0;
	if (FUNC6(portlo > 255))
		return 0;

	*c = '\0';
	c = FUNC5(buf, '.');
	if (FUNC6(c == NULL))
		return 0;
	if (FUNC6(FUNC3(c + 1, 10, &porthi) != 0))
		return 0;
	if (FUNC6(porthi > 255))
		return 0;

	port = (unsigned short)((porthi << 8) | portlo);

	*c = '\0';
	if (FUNC2(buf, FUNC4(buf), sap, salen) == 0)
		return 0;

	switch (sap->sa_family) {
	case AF_INET:
		((struct sockaddr_in *)sap)->sin_port = FUNC0(port);
		return sizeof(struct sockaddr_in);
	case AF_INET6:
		((struct sockaddr_in6 *)sap)->sin6_port = FUNC0(port);
		return sizeof(struct sockaddr_in6);
	}

	return 0;
}