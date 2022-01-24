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
typedef  int /*<<< orphan*/  off_t ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int /*<<< orphan*/  SEEK_CUR ; 
 int /*<<< orphan*/  errno ; 
 scalar_t__ FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ,char*,char*) ; 
 int FUNC3 (int,char*,int) ; 

int
FUNC4(int fd, char *str, int cnt, int *rem, int *isempt, int sz,
	char *name)
{
	char *pt;
	char *end;
	int wcnt;
	char *st = str;

	/*
	 * while we have data to process
	 */
	while (cnt) {
		if (!*rem) {
			/*
			 * We are now at the start of file system block again
			 * (or what we think one is...). start looking for
			 * empty blocks again
			 */
			*isempt = 1;
			*rem = sz;
		}

		/*
		 * only examine up to the end of the current file block or
		 * remaining characters to write, whatever is smaller
		 */
		wcnt = FUNC0(cnt, *rem);
		cnt -= wcnt;
		*rem -= wcnt;
		if (*isempt) {
			/*
			 * have not written to this block yet, so we keep
			 * looking for zero's
			 */
			pt = st;
			end = st + wcnt;

			/*
			 * look for a zero filled buffer
			 */
			while ((pt < end) && (*pt == '\0'))
				++pt;

			if (pt == end) {
				/*
				 * skip, buf is empty so far
				 */
				if (FUNC1(fd, (off_t)wcnt, SEEK_CUR) < 0) {
					FUNC2(1,errno,"File seek on %s",
					    name);
					return(-1);
				}
				st = pt;
				continue;
			}
			/*
			 * drat, the buf is not zero filled
			 */
			*isempt = 0;
		}

		/*
		 * have non-zero data in this file system block, have to write
		 */
		if (FUNC3(fd, st, wcnt) != wcnt) {
			FUNC2(1, errno, "Failed write to file %s", name);
			return(-1);
		}
		st += wcnt;
	}
	return(st - str);
}