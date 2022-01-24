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
 int FUNC1 () ; 
 int bufend ; 
 int bufpt ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int) ; 

int
FUNC3(char *in, int cpcnt)
{
	int res;
	int cnt;
	int incnt = cpcnt;

	/*
	 * loop until we fill the buffer with the requested number of bytes
	 */
	while (incnt > 0) {
		cnt = bufend - bufpt;
		if ((cnt <= 0) && ((cnt = FUNC1()) <= 0)) {
			/*
			 * read error, return what we got (or the error if
			 * no data was copied). The caller must know that an
			 * error occurred and has the best knowledge what to
			 * do with it
			 */
			if ((res = cpcnt - incnt) > 0)
				return(res);
			return(cnt);
		}

		/*
		 * calculate how much data to copy based on whats left and
		 * state of buffer
		 */
		cnt = FUNC0(cnt, incnt);
		FUNC2(in, bufpt, cnt);
		bufpt += cnt;
		incnt -= cnt;
		in += cnt;
	}
	return(cpcnt);
}