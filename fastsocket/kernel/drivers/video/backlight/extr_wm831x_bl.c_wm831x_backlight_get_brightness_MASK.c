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
struct wm831x_backlight_data {int current_brightness; } ;
struct backlight_device {int dummy; } ;

/* Variables and functions */
 struct wm831x_backlight_data* FUNC0 (struct backlight_device*) ; 

__attribute__((used)) static int FUNC1(struct backlight_device *bl)
{
	struct wm831x_backlight_data *data = FUNC0(bl);
	return data->current_brightness;
}