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
 int ENOENT ; 
 int ENOTDIR ; 
 int /*<<< orphan*/  F_DUPFD_CLOEXEC ; 
 int /*<<< orphan*/  INTOFF ; 
 int /*<<< orphan*/  INTON ; 
 int O_CLOEXEC ; 
 int O_RDONLY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,char const*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (char const*,int) ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

void
FUNC7(const char *fname, int push)
{
	int e;
	int fd;
	int fd2;

	INTOFF;
	if ((fd = FUNC4(fname, O_RDONLY | O_CLOEXEC)) < 0) {
		e = errno;
		FUNC2(e == ENOENT || e == ENOTDIR ? 127 : 126,
		    "cannot open %s: %s", fname, FUNC6(e));
	}
	if (fd < 10) {
		fd2 = FUNC3(fd, F_DUPFD_CLOEXEC, 10);
		FUNC0(fd);
		if (fd2 < 0)
			FUNC1("Out of file descriptors");
		fd = fd2;
	}
	FUNC5(fd, push);
	INTON;
}