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
struct ili9320 {int power; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC3 (struct ili9320*) ; 
 int FUNC4 (struct ili9320*) ; 

__attribute__((used)) static int FUNC5(struct ili9320 *lcd, int power)
{
	int ret = 0;

	FUNC1(lcd->dev, "power %d => %d\n", lcd->power, power);

	if (FUNC0(power) && !FUNC0(lcd->power))
		ret = FUNC4(lcd);
	else if (!FUNC0(power) && FUNC0(lcd->power))
		ret = FUNC3(lcd);

	if (ret == 0)
		lcd->power = power;
	else
		FUNC2(lcd->dev, "failed to set power mode %d\n", power);

	return ret;
}