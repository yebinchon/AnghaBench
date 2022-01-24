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
 int /*<<< orphan*/  DEVTTY ; 
 int /*<<< orphan*/  O_RDWR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 void* FUNC2 (int,char*) ; 
 scalar_t__ iflag ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * ttyinf ; 
 int /*<<< orphan*/ * ttyoutf ; 

int
FUNC5(void)
{
	int ttyfd;

	if ((ttyfd = FUNC3(DEVTTY, O_RDWR)) >= 0) {
		if ((ttyoutf = FUNC2(ttyfd, "w")) != NULL) {
			if ((ttyinf = FUNC2(ttyfd, "r")) != NULL)
				return(0);
			(void)FUNC1(ttyoutf);
		}
		(void)FUNC0(ttyfd);
	}

	if (iflag) {
		FUNC4(1, "Fatal error, cannot open %s", DEVTTY);
		return(-1);
	}
	return(0);
}