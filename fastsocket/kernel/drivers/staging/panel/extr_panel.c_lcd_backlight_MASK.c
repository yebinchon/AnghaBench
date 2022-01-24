#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int bl; } ;

/* Variables and functions */
 scalar_t__ PIN_NONE ; 
 TYPE_1__ bits ; 
 scalar_t__ lcd_bl_pin ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  pprt_lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(int on)
{
	if (lcd_bl_pin == PIN_NONE)
		return;

	/* The backlight is activated by seting the AUTOFEED line to +5V  */
	FUNC1(&pprt_lock);
	bits.bl = on;
	FUNC0();
	FUNC2(&pprt_lock);
}