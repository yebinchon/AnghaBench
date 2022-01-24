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
struct lcd_panel {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  backlight_gpio ; 
 int /*<<< orphan*/  enable_gpio ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct lcd_panel *panel)
{
	FUNC0(backlight_gpio);
	FUNC0(enable_gpio);
}