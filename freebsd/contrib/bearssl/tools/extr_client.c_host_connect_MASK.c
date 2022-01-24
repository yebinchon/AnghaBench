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
typedef  int u_long ;
struct sockaddr_in6 {int /*<<< orphan*/  sin6_addr; } ;
struct sockaddr_in {int /*<<< orphan*/  sin_addr; } ;
struct sockaddr {scalar_t__ sa_family; } ;
struct addrinfo {int /*<<< orphan*/  ai_addrlen; scalar_t__ ai_addr; int /*<<< orphan*/  ai_protocol; int /*<<< orphan*/  ai_socktype; int /*<<< orphan*/  ai_family; struct addrinfo* ai_next; } ;
typedef  int SOCKET ;

/* Variables and functions */
 scalar_t__ AF_INET ; 
 scalar_t__ AF_INET6 ; 
 int /*<<< orphan*/  FIONBIO ; 
 int /*<<< orphan*/  F_SETFL ; 
 int /*<<< orphan*/  INET6_ADDRSTRLEN ; 
 int INVALID_SOCKET ; 
 int /*<<< orphan*/  O_NONBLOCK ; 
 int /*<<< orphan*/  PF_UNSPEC ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (struct addrinfo*) ; 
 char* FUNC6 (int) ; 
 int FUNC7 (char const*,char const*,struct addrinfo*,struct addrinfo**) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,void*,char*,int) ; 
 int /*<<< orphan*/  FUNC9 (int,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC10 (struct addrinfo*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 int FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (char*,char*,int) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC14 (char*,char*) ; 

__attribute__((used)) static int
FUNC15(const char *host, const char *port, int verbose)
{
	struct addrinfo hints, *si, *p;
	SOCKET fd;
	int err;

	FUNC10(&hints, 0, sizeof hints);
	hints.ai_family = PF_UNSPEC;
	hints.ai_socktype = SOCK_STREAM;
	err = FUNC7(host, port, &hints, &si);
	if (err != 0) {
		FUNC4(stderr, "ERROR: getaddrinfo(): %s\n",
			FUNC6(err));
		return INVALID_SOCKET;
	}
	fd = INVALID_SOCKET;
	for (p = si; p != NULL; p = p->ai_next) {
		if (verbose) {
			struct sockaddr *sa;
			void *addr;
			char tmp[INET6_ADDRSTRLEN + 50];

			sa = (struct sockaddr *)p->ai_addr;
			if (sa->sa_family == AF_INET) {
				addr = &((struct sockaddr_in *)
					(void *)sa)->sin_addr;
			} else if (sa->sa_family == AF_INET6) {
				addr = &((struct sockaddr_in6 *)
					(void *)sa)->sin6_addr;
			} else {
				addr = NULL;
			}
			if (addr != NULL) {
				if (!FUNC8(p->ai_family, addr,
					tmp, sizeof tmp))
				{
					FUNC14(tmp, "<invalid>");
				}
			} else {
				FUNC13(tmp, "<unknown family: %d>",
					(int)sa->sa_family);
			}
			FUNC4(stderr, "connecting to: %s\n", tmp);
		}
		fd = FUNC12(p->ai_family, p->ai_socktype, p->ai_protocol);
		if (fd == INVALID_SOCKET) {
			if (verbose) {
				FUNC11("socket()");
			}
			continue;
		}
		if (FUNC2(fd, p->ai_addr, p->ai_addrlen) == INVALID_SOCKET) {
			if (verbose) {
				FUNC11("connect()");
			}
#ifdef _WIN32
			closesocket(fd);
#else
			FUNC0(fd);
#endif
			continue;
		}
		break;
	}
	if (p == NULL) {
		FUNC5(si);
		FUNC4(stderr, "ERROR: failed to connect\n");
		return INVALID_SOCKET;
	}
	FUNC5(si);
	if (verbose) {
		FUNC4(stderr, "connected.\n");
	}

	/*
	 * We make the socket non-blocking, since we are going to use
	 * poll() or select() to organise I/O.
	 */
#ifdef _WIN32
	{
		u_long arg;

		arg = 1;
		ioctlsocket(fd, FIONBIO, &arg);
	}
#else
	FUNC3(fd, F_SETFL, O_NONBLOCK);
#endif
	return fd;
}