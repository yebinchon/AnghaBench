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
struct sockaddr_in6 {int /*<<< orphan*/  sin6_addr; } ;
struct sockaddr_in {int /*<<< orphan*/  sin_addr; } ;
struct sockaddr {scalar_t__ sa_family; } ;
struct addrinfo {int /*<<< orphan*/  ai_addrlen; scalar_t__ ai_addr; int /*<<< orphan*/  ai_protocol; int /*<<< orphan*/  ai_socktype; int /*<<< orphan*/  ai_family; struct addrinfo* ai_next; } ;

/* Variables and functions */
 scalar_t__ AF_INET ; 
 scalar_t__ AF_INET6 ; 
 int /*<<< orphan*/  INET6_ADDRSTRLEN ; 
 int /*<<< orphan*/  PF_UNSPEC ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct addrinfo*) ; 
 char* FUNC4 (int) ; 
 int FUNC5 (char const*,char const*,struct addrinfo*,struct addrinfo**) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,void*,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct addrinfo*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*,char*,int) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static int
FUNC11(const char *host, const char *port)
{
	struct addrinfo hints, *si, *p;
	int fd;
	int err;

	FUNC7(&hints, 0, sizeof hints);
	hints.ai_family = PF_UNSPEC;
	hints.ai_socktype = SOCK_STREAM;
	err = FUNC5(host, port, &hints, &si);
	if (err != 0) {
		FUNC2(stderr, "ERROR: getaddrinfo(): %s\n",
			FUNC4(err));
		return -1;
	}
	fd = -1;
	for (p = si; p != NULL; p = p->ai_next) {
		struct sockaddr *sa;
		void *addr;
		char tmp[INET6_ADDRSTRLEN + 50];

		sa = (struct sockaddr *)p->ai_addr;
		if (sa->sa_family == AF_INET) {
			addr = &((struct sockaddr_in *)sa)->sin_addr;
		} else if (sa->sa_family == AF_INET6) {
			addr = &((struct sockaddr_in6 *)sa)->sin6_addr;
		} else {
			addr = NULL;
		}
		if (addr != NULL) {
			FUNC6(p->ai_family, addr, tmp, sizeof tmp);
		} else {
			FUNC10(tmp, "<unknown family: %d>",
				(int)sa->sa_family);
		}
		FUNC2(stderr, "connecting to: %s\n", tmp);
		fd = FUNC9(p->ai_family, p->ai_socktype, p->ai_protocol);
		if (fd < 0) {
			FUNC8("socket()");
			continue;
		}
		if (FUNC1(fd, p->ai_addr, p->ai_addrlen) < 0) {
			FUNC8("connect()");
			FUNC0(fd);
			continue;
		}
		break;
	}
	if (p == NULL) {
		FUNC3(si);
		FUNC2(stderr, "ERROR: failed to connect\n");
		return -1;
	}
	FUNC3(si);
	FUNC2(stderr, "connected.\n");
	return fd;
}