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
typedef  int /*<<< orphan*/  u_longlong_t ;
struct stat64 {scalar_t__ st_size; } ;
typedef  int /*<<< orphan*/  nvlist_t ;

/* Variables and functions */
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 scalar_t__ FUNC5 (int,struct stat64*) ; 
 char* FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (char*,scalar_t__,int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int FUNC9 (char const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int,char*,scalar_t__) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC11 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC12(const char *cachefile)
{
	int fd;
	struct stat64 statbuf;
	char *buf;
	nvlist_t *config;

	if ((fd = FUNC9(cachefile, O_RDONLY)) < 0) {
		(void) FUNC3(stderr, "cannot open '%s': %s\n", cachefile,
		    FUNC11(errno));
		FUNC2(1);
	}

	if (FUNC5(fd, &statbuf) != 0) {
		(void) FUNC3(stderr, "failed to stat '%s': %s\n", cachefile,
		    FUNC11(errno));
		FUNC2(1);
	}

	if ((buf = FUNC6(statbuf.st_size)) == NULL) {
		(void) FUNC3(stderr, "failed to allocate %d bytes\n",
		    (u_longlong_t)statbuf.st_size);
		FUNC2(1);
	}

	if (FUNC10(fd, buf, statbuf.st_size) != statbuf.st_size) {
		(void) FUNC3(stderr, "failed to read %d bytes\n",
		    (u_longlong_t)statbuf.st_size);
		FUNC2(1);
	}

	(void) FUNC0(fd);

	if (FUNC8(buf, statbuf.st_size, &config, 0) != 0) {
		(void) FUNC3(stderr, "failed to unpack nvlist\n");
		FUNC2(1);
	}

	FUNC4(buf);

	FUNC1(config, 0);

	FUNC7(config);
}