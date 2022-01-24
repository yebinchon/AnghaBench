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
struct addrinfo {int /*<<< orphan*/  ai_addrlen; int /*<<< orphan*/  ai_addr; int /*<<< orphan*/  ai_protocol; int /*<<< orphan*/  ai_socktype; int /*<<< orphan*/  ai_family; struct addrinfo* ai_next; } ;
typedef  int /*<<< orphan*/  hints ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int /*<<< orphan*/  EADDRNOTAVAIL ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  SOCK_DGRAM ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC2 (struct addrinfo*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct addrinfo*,struct addrinfo**) ; 
 int /*<<< orphan*/  FUNC5 (struct addrinfo*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  ntp_host ; 
 int /*<<< orphan*/  ntp_port ; 
 int ntpd_sock ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,char const*,...) ; 

__attribute__((used)) static int
FUNC8(void)
{
	struct addrinfo hints, *res, *res0;
	int	error;
	const char *cause;

	FUNC5(&hints, 0, sizeof(hints));
	hints.ai_family = AF_INET;
	hints.ai_socktype = SOCK_DGRAM;

	error = FUNC4(ntp_host, ntp_port, &hints, &res0);
	if (error) {
		FUNC7(LOG_ERR, "%s(%s): %s", ntp_host, ntp_port,
		    FUNC3(error));
		return (-1);
	}

	ntpd_sock = -1;
	cause = "no address";
	errno = EADDRNOTAVAIL;
	for (res = res0; res != NULL; res = res->ai_next) {
		ntpd_sock = FUNC6(res->ai_family, res->ai_socktype,
		    res->ai_protocol);
		if (ntpd_sock == -1) {
			cause = "socket";
			continue;
		}
		if (FUNC1(ntpd_sock, res->ai_addr, res->ai_addrlen) == -1) {
			cause = "connect";
			(void)FUNC0(ntpd_sock);
			ntpd_sock = -1;
			continue;
		}
		break;
	}
	if (ntpd_sock == -1) {
		FUNC7(LOG_ERR, "%s: %m", cause);
		return (-1);
	}
	FUNC2(res0);
	return (0);
}