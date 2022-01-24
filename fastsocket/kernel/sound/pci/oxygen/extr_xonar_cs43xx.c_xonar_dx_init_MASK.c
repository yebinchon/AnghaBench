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
struct TYPE_2__ {int /*<<< orphan*/  ext_power_bit; int /*<<< orphan*/  ext_power_int_reg; int /*<<< orphan*/  ext_power_reg; } ;
struct xonar_cs43xx {TYPE_1__ generic; } ;
struct oxygen {struct xonar_cs43xx* model_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  GPI_EXT_POWER ; 
 int /*<<< orphan*/  OXYGEN_GPI_DATA ; 
 int /*<<< orphan*/  OXYGEN_GPI_INTERRUPT_MASK ; 
 int /*<<< orphan*/  FUNC0 (struct oxygen*) ; 
 int /*<<< orphan*/  FUNC1 (struct oxygen*) ; 

__attribute__((used)) static void FUNC2(struct oxygen *chip)
{
	struct xonar_cs43xx *data = chip->model_data;

	data->generic.ext_power_reg = OXYGEN_GPI_DATA;
	data->generic.ext_power_int_reg = OXYGEN_GPI_INTERRUPT_MASK;
	data->generic.ext_power_bit = GPI_EXT_POWER;
	FUNC1(chip);
	FUNC0(chip);
}