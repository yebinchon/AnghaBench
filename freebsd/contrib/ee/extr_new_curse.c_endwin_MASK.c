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
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  curscr ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  initialized ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stdscr ; 
 int /*<<< orphan*/  virtual_scr ; 

void 
FUNC2()		/* end windows					*/
{
	FUNC1(stdscr, FALSE);
	initialized = FALSE;
	FUNC0(curscr);
	FUNC0(virtual_scr);
	FUNC0(stdscr);
#ifndef SYS5
{
	int old_arg, value;
/*	old_arg = fcntl(0, F_GETFL, 0);
	value = fcntl(0, F_SETFL, old_arg & ~FNDELAY);*/
}
#endif
}