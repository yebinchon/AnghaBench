#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct sockaddr_in6 {int /*<<< orphan*/  sin6_addr; } ;
struct TYPE_2__ {int /*<<< orphan*/  s_addr; } ;
struct sockaddr_in {TYPE_1__ sin_addr; } ;
struct sockaddr {scalar_t__ sa_family; } ;
struct addrinfo {size_t ai_addrlen; int /*<<< orphan*/  ai_protocol; int /*<<< orphan*/  ai_socktype; int /*<<< orphan*/  ai_family; scalar_t__ ai_addr; struct addrinfo* ai_next; } ;

/* Variables and functions */
 scalar_t__ AF_INET ; 
 scalar_t__ AF_INET6 ; 
 int /*<<< orphan*/  INADDR_ANY ; 
 int /*<<< orphan*/  INET6_ADDRSTRLEN ; 
 int /*<<< orphan*/  IPPROTO_IPV6 ; 
 int /*<<< orphan*/  IPV6_V6ONLY ; 
 int /*<<< orphan*/  PF_UNSPEC ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int /*<<< orphan*/  SOL_SOCKET ; 
 int /*<<< orphan*/  SO_REUSEADDR ; 
 scalar_t__ FUNC0 (int,struct sockaddr*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct addrinfo*) ; 
 char* FUNC4 (int) ; 
 int FUNC5 (char const*,char const*,struct addrinfo*,struct addrinfo**) ; 
 int /*<<< orphan*/  in6addr_any ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,void*,char*,int) ; 
 scalar_t__ FUNC7 (int,int) ; 
 int /*<<< orphan*/  FUNC8 (struct addrinfo*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 int FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (char*,char*,int) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static int
FUNC13(const char *host, const char *port)
{
	struct addrinfo hints, *si, *p;
	int fd;
	int err;

	FUNC8(&hints, 0, sizeof hints);
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
		struct sockaddr_in sa4;
		struct sockaddr_in6 sa6;
		size_t sa_len;
		void *addr;
		char tmp[INET6_ADDRSTRLEN + 50];
		int opt;

		sa = (struct sockaddr *)p->ai_addr;
		if (sa->sa_family == AF_INET) {
			sa4 = *(struct sockaddr_in *)sa;
			sa = (struct sockaddr *)&sa4;
			sa_len = sizeof sa4;
			addr = &sa4.sin_addr;
			if (host == NULL) {
				sa4.sin_addr.s_addr = INADDR_ANY;
			}
		} else if (sa->sa_family == AF_INET6) {
			sa6 = *(struct sockaddr_in6 *)sa;
			sa = (struct sockaddr *)&sa6;
			sa_len = sizeof sa6;
			addr = &sa6.sin6_addr;
			if (host == NULL) {
				sa6.sin6_addr = in6addr_any;
			}
		} else {
			addr = NULL;
			sa_len = p->ai_addrlen;
		}
		if (addr != NULL) {
			FUNC6(p->ai_family, addr, tmp, sizeof tmp);
		} else {
			FUNC12(tmp, "<unknown family: %d>",
				(int)sa->sa_family);
		}
		FUNC2(stderr, "binding to: %s\n", tmp);
		fd = FUNC11(p->ai_family, p->ai_socktype, p->ai_protocol);
		if (fd < 0) {
			FUNC9("socket()");
			continue;
		}
		opt = 1;
		FUNC10(fd, SOL_SOCKET, SO_REUSEADDR, &opt, sizeof opt);
		opt = 0;
		FUNC10(fd, IPPROTO_IPV6, IPV6_V6ONLY, &opt, sizeof opt);
		if (FUNC0(fd, sa, sa_len) < 0) {
			FUNC9("bind()");
			FUNC1(fd);
			continue;
		}
		break;
	}
	if (p == NULL) {
		FUNC3(si);
		FUNC2(stderr, "ERROR: failed to bind\n");
		return -1;
	}
	FUNC3(si);
	if (FUNC7(fd, 5) < 0) {
		FUNC9("listen()");
		FUNC1(fd);
		return -1;
	}
	FUNC2(stderr, "bound.\n");
	return fd;
}