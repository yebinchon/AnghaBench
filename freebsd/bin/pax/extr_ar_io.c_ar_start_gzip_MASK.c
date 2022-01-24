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

/* Variables and functions */
 int STDIN_FILENO ; 
 int STDOUT_FILENO ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 scalar_t__ FUNC3 (char const*,char const*,char const*,char*) ; 
 scalar_t__ FUNC4 () ; 
 scalar_t__ FUNC5 (int*) ; 
 scalar_t__ zpid ; 

void
FUNC6(int fd, const char *gzip_prog, int wr)
{
	int fds[2];
	const char *gzip_flags;

	if (FUNC5(fds) < 0)
		FUNC2(1, "could not pipe");
	zpid = FUNC4();
	if (zpid < 0)
		FUNC2(1, "could not fork");

	/* parent */
	if (zpid) {
		if (wr)
			FUNC1(fds[1], fd);
		else
			FUNC1(fds[0], fd);
		FUNC0(fds[0]);
		FUNC0(fds[1]);
	} else {
		if (wr) {
			FUNC1(fds[0], STDIN_FILENO);
			FUNC1(fd, STDOUT_FILENO);
			gzip_flags = "-c";
		} else {
			FUNC1(fds[1], STDOUT_FILENO);
			FUNC1(fd, STDIN_FILENO);
			gzip_flags = "-dc";
		}
		FUNC0(fds[0]);
		FUNC0(fds[1]);
		if (FUNC3(gzip_prog, gzip_prog, gzip_flags,
		    (char *)NULL) < 0)
			FUNC2(1, "could not exec");
		/* NOTREACHED */
	}
}