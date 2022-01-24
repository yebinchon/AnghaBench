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
struct sockaddr {int sa_family; } ;
typedef  int socklen_t ;

/* Variables and functions */
#define  AF_INET 129 
#define  AF_INET6 128 
 int /*<<< orphan*/  INET6_ADDRSTRLEN ; 
 int FUNC0 (int,struct sockaddr*,int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char const*) ; 
 char* FUNC2 (int const,int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,unsigned long) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static int
FUNC5(int server_fd)
{
	int fd;
	struct sockaddr sa;
	socklen_t sa_len;
	char tmp[INET6_ADDRSTRLEN + 50];
	const char *name;

	sa_len = sizeof sa;
	fd = FUNC0(server_fd, &sa, &sa_len);
	if (fd < 0) {
		FUNC3("accept()");
		return -1;
	}
	name = NULL;
	switch (sa.sa_family) {
	case AF_INET:
		name = FUNC2(AF_INET,
			&((struct sockaddr_in *)&sa)->sin_addr,
			tmp, sizeof tmp);
		break;
	case AF_INET6:
		name = FUNC2(AF_INET6,
			&((struct sockaddr_in6 *)&sa)->sin6_addr,
			tmp, sizeof tmp);
		break;
	}
	if (name == NULL) {
		FUNC4(tmp, "<unknown: %lu>", (unsigned long)sa.sa_family);
		name = tmp;
	}
	FUNC1(stderr, "accepting connection from: %s\n", name);
	return fd;
}