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
struct xonar_generic {int ext_power_bit; int has_power; int /*<<< orphan*/  ext_power_reg; int /*<<< orphan*/  ext_power_int_reg; } ;
struct TYPE_2__ {int /*<<< orphan*/  gpio_changed; } ;
struct oxygen {TYPE_1__ model; int /*<<< orphan*/  interrupt_mask; struct xonar_generic* model_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  OXYGEN_INT_GPIO ; 
 int FUNC0 (struct oxygen*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct oxygen*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  xonar_ext_power_gpio_changed ; 

void FUNC2(struct oxygen *chip)
{
	struct xonar_generic *data = chip->model_data;

	FUNC1(chip, data->ext_power_int_reg,
			 data->ext_power_bit);
	chip->interrupt_mask |= OXYGEN_INT_GPIO;
	chip->model.gpio_changed = xonar_ext_power_gpio_changed;
	data->has_power = !!(FUNC0(chip, data->ext_power_reg)
			     & data->ext_power_bit);
}