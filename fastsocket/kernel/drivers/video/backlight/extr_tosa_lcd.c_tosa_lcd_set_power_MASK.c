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
struct tosa_lcd_data {int lcd_power; } ;
struct lcd_device {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 struct tosa_lcd_data* FUNC1 (struct lcd_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct tosa_lcd_data*) ; 
 int /*<<< orphan*/  FUNC3 (struct tosa_lcd_data*) ; 

int FUNC4(struct lcd_device *lcd, int power)
{
	struct tosa_lcd_data *data = FUNC1(lcd);

	if (FUNC0(power) && !FUNC0(data->lcd_power))
		FUNC3(data);

	if (!FUNC0(power) && FUNC0(data->lcd_power))
		FUNC2(data);

	data->lcd_power = power;
	return 0;
}