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
struct tosa_lcd_data {int is_vga; int /*<<< orphan*/  lcd_power; } ;
struct lcd_device {int dummy; } ;
struct fb_videomode {int xres; int yres; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 struct tosa_lcd_data* FUNC1 (struct lcd_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct tosa_lcd_data*) ; 

__attribute__((used)) static int FUNC3(struct lcd_device *lcd, struct fb_videomode *mode)
{
	struct tosa_lcd_data *data = FUNC1(lcd);

	if (mode->xres == 320 || mode->yres == 320)
		data->is_vga = false;
	else
		data->is_vga = true;

	if (FUNC0(data->lcd_power))
		FUNC2(data);

	return 0;
}