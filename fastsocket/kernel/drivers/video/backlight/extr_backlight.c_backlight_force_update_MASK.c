#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  brightness; } ;
struct backlight_device {int /*<<< orphan*/  ops_lock; TYPE_2__* ops; TYPE_1__ props; } ;
typedef  enum backlight_update_reason { ____Placeholder_backlight_update_reason } backlight_update_reason ;
struct TYPE_4__ {int /*<<< orphan*/  (* get_brightness ) (struct backlight_device*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct backlight_device*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct backlight_device*) ; 

void FUNC4(struct backlight_device *bd,
			    enum backlight_update_reason reason)
{
	FUNC1(&bd->ops_lock);
	if (bd->ops && bd->ops->get_brightness)
		bd->props.brightness = bd->ops->get_brightness(bd);
	FUNC2(&bd->ops_lock);
	FUNC0(bd, reason);
}