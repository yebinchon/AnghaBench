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
 scalar_t__ APPND ; 
 scalar_t__ act ; 
 scalar_t__ FUNC0 () ; 
 scalar_t__ FUNC1 () ; 
 int FUNC2 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  blksz ; 
 void* buf ; 
 void* bufend ; 
 void* bufpt ; 
 int maxflt ; 
 int /*<<< orphan*/  FUNC3 (int,char*,...) ; 
 scalar_t__ rdcnt ; 

int
FUNC4(void)
{
	int errcnt = 0;
	int res;

	/*
	 * if the user says bail out on first fault, we are out of here...
	 */
	if (maxflt == 0)
		return(-1);
	if (act == APPND) {
		FUNC3(1, "Unable to append when there are archive read errors.");
		return(-1);
	}

	/*
	 * poke at device and try to get past media error
	 */
	if (FUNC1() < 0) {
		if (FUNC0() < 0)
			return(-1);
		else
			rdcnt = 0;
	}

	for (;;) {
		if ((res = FUNC2(buf, blksz)) > 0) {
			/*
			 * All right! got some data, fill that buffer
			 */
			bufpt = buf;
			bufend = buf + res;
			rdcnt += res;
			return(0);
		}

		/*
		 * Oh well, yet another failed read...
		 * if error limit reached, ditch. o.w. poke device to move past
		 * bad media and try again. if media is badly damaged, we ask
		 * the poor (and upset user at this point) for the next archive
		 * volume. remember the goal on reads is to get the most we
		 * can extract out of the archive.
		 */
		if ((maxflt > 0) && (++errcnt > maxflt))
			FUNC3(0,"Archive read error limit (%d) reached",maxflt);
		else if (FUNC1() == 0)
			continue;
		if (FUNC0() < 0)
			break;
		rdcnt = 0;
		errcnt = 0;
	}
	return(-1);
}