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
 int /*<<< orphan*/  AF_LOCAL ; 
 int /*<<< orphan*/  EINVAL ; 
 int O_ACCMODE ; 
#define  O_RDONLY 129 
#define  O_WRONLY 128 
 int PATH_MAX ; 
 int /*<<< orphan*/  SHUT_RD ; 
 int /*<<< orphan*/  SHUT_WR ; 
 int /*<<< orphan*/  FUNC0 (struct addrinfo*,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC3 (struct addrinfo*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (char*,int /*<<< orphan*/ *,struct addrinfo*,struct addrinfo**) ; 
 int /*<<< orphan*/ * FUNC6 (char const*,char*) ; 
 int FUNC7 (int,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,...) ; 

__attribute__((used)) static int
FUNC10(const char *path, int flags)
{
	struct addrinfo hints, *res, *res0;
	char rpath[PATH_MAX];
	int fd = -1;
	int error;

	/*
	 * Construct the unix domain socket address and attempt to connect.
	 */
	FUNC0(&hints, sizeof(hints));
	hints.ai_family = AF_LOCAL;
	if (FUNC6(path, rpath) == NULL)
		return (-1);
	error = FUNC5(rpath, NULL, &hints, &res0);
	if (error) {
		FUNC9("%s", FUNC4(error));
		errno = EINVAL;
		return (-1);
	}
	for (res = res0; res != NULL; res = res->ai_next) {
		fd = FUNC8(res->ai_family, res->ai_socktype,
		    res->ai_protocol);
		if (fd < 0) {
			FUNC3(res0);
			return (-1);
		}
		error = FUNC2(fd, res->ai_addr, res->ai_addrlen);
		if (error == 0)
			break;
		else {
			FUNC1(fd);
			fd = -1;
		}
	}
	FUNC3(res0);

	/*
	 * handle the open flags by shutting down appropriate directions
	 */
	if (fd >= 0) {
		switch(flags & O_ACCMODE) {
		case O_RDONLY:
			if (FUNC7(fd, SHUT_WR) == -1)
				FUNC9(NULL);
			break;
		case O_WRONLY:
			if (FUNC7(fd, SHUT_RD) == -1)
				FUNC9(NULL);
			break;
		default:
			break;
		}
	}
	return (fd);
}