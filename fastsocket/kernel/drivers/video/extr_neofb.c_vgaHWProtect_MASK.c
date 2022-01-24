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
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 unsigned char FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int) ; 

__attribute__((used)) static void FUNC4(int on)
{
	unsigned char tmp;

	tmp = FUNC2(NULL, 0x01);
	if (on) {
		/*
		 * Turn off screen and disable sequencer.
		 */
		FUNC3(NULL, 0x00, 0x01);		/* Synchronous Reset */
		FUNC3(NULL, 0x01, tmp | 0x20);	/* disable the display */

		FUNC1();
	} else {
		/*
		 * Reenable sequencer, then turn on screen.
		 */
		FUNC3(NULL, 0x01, tmp & ~0x20);	/* reenable display */
		FUNC3(NULL, 0x00, 0x03);		/* clear synchronousreset */

		FUNC0();
	}
}