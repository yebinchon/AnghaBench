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
 int FUNC0 (int,int) ; 
 int /*<<< orphan*/  blksz ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int bufend ; 
 int bufpt ; 
 int /*<<< orphan*/  FUNC2 (int,char*,int) ; 

int
FUNC3(char *out, int outcnt)
{
	int cnt;

	/*
	 * while there is data to copy into the write buffer. when the
	 * write buffer fills, flush it to the archive and continue
	 */
	while (outcnt > 0) {
		cnt = bufend - bufpt;
		if ((cnt <= 0) && ((cnt = FUNC1(blksz)) < 0))
			return(-1);
		/*
		 * only move what we have space for
		 */
		cnt = FUNC0(cnt, outcnt);
		FUNC2(bufpt, out, cnt);
		bufpt += cnt;
		out += cnt;
		outcnt -= cnt;
	}
	return(0);
}