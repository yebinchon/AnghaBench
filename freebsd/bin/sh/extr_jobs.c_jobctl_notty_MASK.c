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
 int /*<<< orphan*/  SIGTSTP ; 
 int /*<<< orphan*/  SIGTTIN ; 
 int /*<<< orphan*/  SIGTTOU ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  iflag ; 
 int jobctl ; 
 scalar_t__ mflag ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int ttyfd ; 

__attribute__((used)) static void
FUNC3(void)
{
	if (ttyfd >= 0) {
		FUNC0(ttyfd);
		ttyfd = -1;
	}
	if (!iflag) {
		FUNC2(SIGTSTP);
		FUNC2(SIGTTOU);
		FUNC2(SIGTTIN);
		jobctl = 1;
		return;
	}
	FUNC1("sh: can't access tty; job control turned off\n");
	mflag = 0;
}