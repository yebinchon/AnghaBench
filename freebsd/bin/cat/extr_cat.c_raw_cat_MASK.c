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
struct stat {size_t st_blksize; int /*<<< orphan*/  st_mode; } ;
typedef  scalar_t__ ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  BUFSIZE_MAX ; 
 size_t BUFSIZE_SMALL ; 
 size_t FUNC0 (size_t,size_t) ; 
 int MAXPHYS ; 
 size_t FUNC1 (int /*<<< orphan*/ ,int) ; 
 long PHYSPAGES_THRESHOLD ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  _SC_PAGESIZE ; 
 int /*<<< orphan*/  _SC_PHYS_PAGES ; 
 int /*<<< orphan*/  FUNC3 (int,char*) ; 
 int /*<<< orphan*/  filename ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int,struct stat*) ; 
 char* FUNC6 (size_t) ; 
 scalar_t__ FUNC7 (int,char*,size_t) ; 
 int rval ; 
 int /*<<< orphan*/  stdout ; 
 long FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int,char*,size_t) ; 

__attribute__((used)) static void
FUNC11(int rfd)
{
	long pagesize;
	int off, wfd;
	ssize_t nr, nw;
	static size_t bsize;
	static char *buf = NULL;
	struct stat sbuf;

	wfd = FUNC4(stdout);
	if (buf == NULL) {
		if (FUNC5(wfd, &sbuf))
			FUNC3(1, "stdout");
		if (FUNC2(sbuf.st_mode)) {
			/* If there's plenty of RAM, use a large copy buffer */
			if (FUNC8(_SC_PHYS_PAGES) > PHYSPAGES_THRESHOLD)
				bsize = FUNC1(BUFSIZE_MAX, MAXPHYS * 8);
			else
				bsize = BUFSIZE_SMALL;
		} else {
			bsize = sbuf.st_blksize;
			pagesize = FUNC8(_SC_PAGESIZE);
			if (pagesize > 0)
				bsize = FUNC0(bsize, (size_t)pagesize);
		}
		if ((buf = FUNC6(bsize)) == NULL)
			FUNC3(1, "malloc() failure of IO buffer");
	}
	while ((nr = FUNC7(rfd, buf, bsize)) > 0)
		for (off = 0; nr; nr -= nw, off += nw)
			if ((nw = FUNC10(wfd, buf + off, (size_t)nr)) < 0)
				FUNC3(1, "stdout");
	if (nr < 0) {
		FUNC9("%s", filename);
		rval = 1;
	}
}