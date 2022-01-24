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
 size_t BLKMULT ; 
 size_t MAXBLK ; 
 scalar_t__ act ; 
 scalar_t__ FUNC0 () ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  arcname ; 
 int /*<<< orphan*/ * buf ; 
 int /*<<< orphan*/ * bufend ; 
 int /*<<< orphan*/ * bufmem ; 
 int /*<<< orphan*/ * bufpt ; 
 int /*<<< orphan*/  FUNC2 (int,char*,size_t,size_t) ; 
 int rdblksz ; 
 scalar_t__ rdcnt ; 
 size_t wrblksz ; 

int
FUNC3(void)
{
	/*
	 * leave space for the header pushback (see get_arc()). If we are
	 * going to append and user specified a write block size, check it
	 * right away
	 */
	buf = &(bufmem[BLKMULT]);
	if ((act == APPND) && wrblksz) {
		if (wrblksz > MAXBLK) {
			FUNC2(1,"Write block size %d too large, maximum is: %d",
				wrblksz, MAXBLK);
			return(-1);
		}
		if (wrblksz % BLKMULT) {
			FUNC2(1, "Write block size %d is not a %d byte multiple",
			wrblksz, BLKMULT);
			return(-1);
		}
	}

	/*
	 * open the archive
	 */
	if ((FUNC1(arcname) < 0) && (FUNC0() < 0))
		return(-1);
	bufend = buf + rdblksz;
	bufpt = bufend;
	rdcnt = 0;
	return(0);
}