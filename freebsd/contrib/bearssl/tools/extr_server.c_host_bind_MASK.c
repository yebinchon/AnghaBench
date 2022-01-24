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
struct TYPE_2__ {int /*<<< orphan*/  s_addr; } ;
struct sockaddr_in6 {int /*<<< orphan*/  sin6_addr; TYPE_1__ sin_addr; } ;
struct sockaddr_in {int /*<<< orphan*/  sin6_addr; TYPE_1__ sin_addr; } ;
struct sockaddr {scalar_t__ sa_family; } ;
struct addrinfo {size_t ai_addrlen; int /*<<< orphan*/  ai_protocol; int /*<<< orphan*/  ai_socktype; int /*<<< orphan*/  ai_family; scalar_t__ ai_addr; struct addrinfo* ai_next; } ;
typedef  scalar_t__ SOCKET ;

/* Variables and functions */
 scalar_t__ AF_INET ; 
 scalar_t__ AF_INET6 ; 
 int /*<<< orphan*/  INADDR_ANY ; 
 int /*<<< orphan*/  INET6_ADDRSTRLEN ; 
 scalar_t__ INVALID_SOCKET ; 
 int /*<<< orphan*/  IPPROTO_IPV6 ; 
 int /*<<< orphan*/  IPV6_V6ONLY ; 
 int /*<<< orphan*/  PF_UNSPEC ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int /*<<< orphan*/  SOL_SOCKET ; 
 int /*<<< orphan*/  SO_REUSEADDR ; 
 scalar_t__ FUNC0 (scalar_t__,struct sockaddr*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (struct addrinfo*) ; 
 char* FUNC5 (int) ; 
 int FUNC6 (char const*,char const*,struct addrinfo*,struct addrinfo**) ; 
 int /*<<< orphan*/  in6addr_any ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,void*,char*,int) ; 
 scalar_t__ FUNC8 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC9 (struct sockaddr_in6*,struct sockaddr*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct addrinfo*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (char*,char*,int) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC15 (char*,char*) ; 

__attribute__((used)) static SOCKET
FUNC16(const char *host, const char *port, int verbose)
{
	struct addrinfo hints, *si, *p;
	SOCKET fd;
	int err;

	FUNC10(&hints, 0, sizeof hints);
	hints.ai_family = PF_UNSPEC;
	hints.ai_socktype = SOCK_STREAM;
	err = FUNC6(host, port, &hints, &si);
	if (err != 0) {
		FUNC3(stderr, "ERROR: getaddrinfo(): %s\n",
			FUNC5(err));
		return INVALID_SOCKET;
	}
	fd = INVALID_SOCKET;
	for (p = si; p != NULL; p = p->ai_next) {
		struct sockaddr *sa;
		struct sockaddr_in sa4;
		struct sockaddr_in6 sa6;
		size_t sa_len;
		void *addr;
		int opt;

		sa = (struct sockaddr *)p->ai_addr;
		if (sa->sa_family == AF_INET) {
			FUNC9(&sa4, sa, sizeof sa4);
			sa = (struct sockaddr *)&sa4;
			sa_len = sizeof sa4;
			addr = &sa4.sin_addr;
			if (host == NULL) {
				sa4.sin_addr.s_addr = INADDR_ANY;
			}
		} else if (sa->sa_family == AF_INET6) {
			FUNC9(&sa6, sa, sizeof sa6);
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
		if (verbose) {
			char tmp[INET6_ADDRSTRLEN + 50];

			if (addr != NULL) {
				if (!FUNC7(p->ai_family, addr,
					tmp, sizeof tmp))
				{
					FUNC15(tmp, "<invalid>");
				}
			} else {
				FUNC14(tmp, "<unknown family: %d>",
					(int)sa->sa_family);
			}
			FUNC3(stderr, "binding to: %s\n", tmp);
		}
		fd = FUNC13(p->ai_family, p->ai_socktype, p->ai_protocol);
		if (fd == INVALID_SOCKET) {
			if (verbose) {
				FUNC11("socket()");
			}
			continue;
		}
		opt = 1;
		FUNC12(fd, SOL_SOCKET, SO_REUSEADDR,
			(void *)&opt, sizeof opt);
#ifdef IPV6_V6ONLY
		/*
		 * We want to make sure that the server socket works for
		 * both IPv4 and IPv6. But IPV6_V6ONLY is not defined on
		 * some very old systems.
		 */
		opt = 0;
		setsockopt(fd, IPPROTO_IPV6, IPV6_V6ONLY,
			(void *)&opt, sizeof opt);
#endif
		if (FUNC0(fd, sa, sa_len) < 0) {
			if (verbose) {
				FUNC11("bind()");
			}
#ifdef _WIN32
			closesocket(fd);
#else
			FUNC1(fd);
#endif
			continue;
		}
		break;
	}
	if (p == NULL) {
		FUNC4(si);
		FUNC3(stderr, "ERROR: failed to bind\n");
		return INVALID_SOCKET;
	}
	FUNC4(si);
	if (FUNC8(fd, 5) < 0) {
		if (verbose) {
			FUNC11("listen()");
		}
#ifdef _WIN32
		closesocket(fd);
#else
		FUNC1(fd);
#endif
		return INVALID_SOCKET;
	}
	if (verbose) {
		FUNC3(stderr, "bound.\n");
	}
	return fd;
}