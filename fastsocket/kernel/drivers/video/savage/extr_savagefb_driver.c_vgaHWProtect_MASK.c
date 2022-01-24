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
struct savagefb_par {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct savagefb_par*) ; 
 int /*<<< orphan*/  FUNC1 (struct savagefb_par*) ; 
 unsigned char FUNC2 (int,struct savagefb_par*) ; 
 int /*<<< orphan*/  FUNC3 (int,unsigned char,struct savagefb_par*) ; 
 int /*<<< orphan*/  FUNC4 (struct savagefb_par*,int) ; 

__attribute__((used)) static void FUNC5(struct savagefb_par *par, int on)
{
	unsigned char tmp;

	if (on) {
		/*
		 * Turn off screen and disable sequencer.
		 */
		tmp = FUNC2(0x01, par);

		FUNC4(par, 1);	        /* start synchronous reset */
		FUNC3(0x01, tmp | 0x20, par);/* disable the display */

		FUNC1(par);
	} else {
		/*
		 * Reenable sequencer, then turn on screen.
		 */

		tmp = FUNC2(0x01, par);

		FUNC3(0x01, tmp & ~0x20, par);/* reenable display */
		FUNC4(par, 0);	        /* clear synchronous reset */

		FUNC0(par);
	}
}