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
struct gpio_runtime {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PMAC_FTR_READ_GPIO ; 
 int /*<<< orphan*/  PMAC_FTR_WRITE_GPIO ; 
 int FUNC0 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  hw_reset ; 
 scalar_t__ hw_reset_gpio ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__,int) ; 
 scalar_t__ FUNC2 (int) ; 

__attribute__((used)) static void FUNC3(struct gpio_runtime *rt, int on)
{
	int v;

	if (FUNC2(!rt)) return;
	if (hw_reset_gpio < 0)
		return;

	v = FUNC1(PMAC_FTR_READ_GPIO, NULL,
			      hw_reset_gpio, 0);
	v = FUNC0(hw_reset, v, on);
	FUNC1(PMAC_FTR_WRITE_GPIO, NULL,
			  hw_reset_gpio, v);
}