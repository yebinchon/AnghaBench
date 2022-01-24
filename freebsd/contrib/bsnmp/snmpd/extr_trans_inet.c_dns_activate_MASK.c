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
struct sockaddr_in6 {int dummy; } ;
struct sockaddr_in {int dummy; } ;
struct port_sock {int /*<<< orphan*/  bind_addr; struct inet_port* port; int /*<<< orphan*/  input; } ;
struct inet_port {char* dns_addr; int /*<<< orphan*/  row_status; int /*<<< orphan*/  socks; int /*<<< orphan*/  dns_port; } ;
struct addrinfo {scalar_t__ ai_family; int ai_flags; scalar_t__ ai_addr; struct addrinfo* ai_next; int /*<<< orphan*/  ai_socktype; } ;
typedef  int /*<<< orphan*/  hints ;

/* Variables and functions */
 scalar_t__ AF_INET ; 
 scalar_t__ AF_INET6 ; 
 scalar_t__ AF_UNSPEC ; 
 int AI_ADDRCONFIG ; 
 int AI_NUMERICSERV ; 
 int AI_PASSIVE ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  RowStatus_active ; 
 int SNMP_ERR_GENERR ; 
 int SNMP_ERR_NOERROR ; 
 int /*<<< orphan*/  SOCK_DGRAM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct port_sock*,int /*<<< orphan*/ ) ; 
 struct port_sock* FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct port_sock*) ; 
 int /*<<< orphan*/  FUNC4 (struct addrinfo*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int FUNC6 (char*,char*,struct addrinfo*,struct addrinfo**) ; 
 int FUNC7 (struct port_sock*) ; 
 int FUNC8 (struct port_sock*) ; 
 int /*<<< orphan*/  link ; 
 int /*<<< orphan*/  FUNC9 (struct addrinfo*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC14(struct inet_port *port)
{
	struct addrinfo hints;
	FUNC9(&hints, 0, sizeof(hints));
	hints.ai_family = AF_UNSPEC;
	hints.ai_socktype = SOCK_DGRAM;		// XXX udp-only
	hints.ai_flags = AI_ADDRCONFIG | AI_PASSIVE | AI_NUMERICSERV;

	char portbuf[8];
	FUNC12(portbuf, "%hu", FUNC10(port->dns_port));

	struct addrinfo *res0;
	int error = FUNC6(port->dns_addr[0] == '\0'
	    ? NULL : port->dns_addr,
	    portbuf, &hints, &res0);

	if (error) {
		FUNC13(LOG_ERR, "cannot resolve address '%s': %s",
		    port->dns_addr, FUNC5(error));
		return (SNMP_ERR_GENERR);
	}

	for (struct addrinfo *res = res0; res != NULL; res = res->ai_next) {
		if (res->ai_family != AF_INET && res->ai_family != AF_INET6)
			continue;

		struct port_sock *sock = FUNC2(1, sizeof(struct port_sock));
		if (sock == NULL)
			return (SNMP_ERR_GENERR);

		FUNC11(&sock->input);
		sock->port = port;

		int ret = SNMP_ERR_NOERROR;

		if (res->ai_family == AF_INET) {
			*(struct sockaddr_in *)&sock->bind_addr =
			    *(struct sockaddr_in *)(void *)res->ai_addr;
			ret = FUNC7(sock);
		} else {
			*(struct sockaddr_in6 *)&sock->bind_addr =
			    *(struct sockaddr_in6 *)(void *)res->ai_addr;
			ret = FUNC8(sock);
		}

		if (ret != SNMP_ERR_NOERROR)
			FUNC3(sock);
		else
			FUNC1(&port->socks, sock, link);
	}

	if (!FUNC0(&port->socks))
		port->row_status = RowStatus_active;

	FUNC4(res0);
	return (SNMP_ERR_GENERR);
}