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
struct TYPE_2__ {int /*<<< orphan*/  state; } ;
struct backlight_device {int /*<<< orphan*/  ops_lock; TYPE_1__ props; } ;

/* Variables and functions */
 int /*<<< orphan*/  GENERICBL_BATTLOW ; 
 int /*<<< orphan*/  FUNC0 (struct backlight_device*) ; 
 struct backlight_device* generic_backlight_device ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(int limit)
{
	struct backlight_device *bd = generic_backlight_device;

	FUNC1(&bd->ops_lock);
	if (limit)
		bd->props.state |= GENERICBL_BATTLOW;
	else
		bd->props.state &= ~GENERICBL_BATTLOW;
	FUNC0(generic_backlight_device);
	FUNC2(&bd->ops_lock);
}