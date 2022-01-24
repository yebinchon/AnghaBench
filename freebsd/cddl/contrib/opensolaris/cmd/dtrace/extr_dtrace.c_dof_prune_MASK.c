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
struct stat {size_t st_size; } ;

/* Variables and functions */
 scalar_t__ ENOENT ; 
 int O_RDONLY ; 
 int O_TRUNC ; 
 int O_WRONLY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int FUNC4 (int,struct stat*) ; 
 char* FUNC5 (size_t) ; 
 int FUNC6 (char const*,int) ; 
 size_t FUNC7 (int,char*,size_t) ; 
 size_t FUNC8 (char*) ; 
 scalar_t__ FUNC9 (char*,char*,size_t) ; 
 size_t FUNC10 (int,char*,size_t) ; 

__attribute__((used)) static void
FUNC11(const char *fname)
{
	struct stat sbuf;
	size_t sz, i, j, mark, len;
	char *buf;
	int msg = 0, fd;

	if ((fd = FUNC6(fname, O_RDONLY)) == -1) {
		/*
		 * This is okay only if the file doesn't exist at all.
		 */
		if (errno != ENOENT)
			FUNC2("failed to open %s", fname);
		return;
	}

	if (FUNC4(fd, &sbuf) == -1)
		FUNC2("failed to fstat %s", fname);

	if ((buf = FUNC5((sz = sbuf.st_size) + 1)) == NULL)
		FUNC2("failed to allocate memory for %s", fname);

	if (FUNC7(fd, buf, sz) != sz)
		FUNC2("failed to read %s", fname);

	buf[sz] = '\0';
	(void) FUNC0(fd);

	if ((fd = FUNC6(fname, O_WRONLY | O_TRUNC)) == -1)
		FUNC2("failed to open %s for writing", fname);

	len = FUNC8("dof-data-");

	for (mark = 0, i = 0; i < sz; i++) {
		if (FUNC9(&buf[i], "dof-data-", len) != 0)
			continue;

		/*
		 * This is only a match if it's in the 0th column.
		 */
		if (i != 0 && buf[i - 1] != '\n')
			continue;

		if (msg++ == 0) {
			FUNC1("cleaned up old anonymous "
			    "enabling in %s\n", fname);
		}

		/*
		 * We have a match.  First write out our data up until now.
		 */
		if (i != mark) {
			if (FUNC10(fd, &buf[mark], i - mark) != i - mark)
				FUNC2("failed to write to %s", fname);
		}

		/*
		 * Now scan forward until we scan past a newline.
		 */
		for (j = i; j < sz && buf[j] != '\n'; j++)
			continue;

		/*
		 * Reset our mark.
		 */
		if ((mark = j + 1) >= sz)
			break;

		i = j;
	}

	if (mark < sz) {
		if (FUNC10(fd, &buf[mark], sz - mark) != sz - mark)
			FUNC2("failed to write to %s", fname);
	}

	(void) FUNC0(fd);
	FUNC3(buf);
}