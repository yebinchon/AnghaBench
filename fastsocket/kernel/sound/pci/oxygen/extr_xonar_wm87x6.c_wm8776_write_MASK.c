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
struct xonar_wm87x6 {unsigned int* wm8776_regs; } ;
struct TYPE_2__ {int function_flags; } ;
struct oxygen {TYPE_1__ model; struct xonar_wm87x6* model_data; } ;

/* Variables and functions */
 unsigned int FUNC0 (unsigned int*) ; 
 int OXYGEN_FUNCTION_2WIRE_SPI_MASK ; 
 int OXYGEN_FUNCTION_SPI ; 
 unsigned int WM8776_DACMASTER ; 
 unsigned int WM8776_HPLVOL ; 
 unsigned int WM8776_UPDATE ; 
 int /*<<< orphan*/  FUNC1 (struct oxygen*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct oxygen*,unsigned int,unsigned int) ; 

__attribute__((used)) static void FUNC3(struct oxygen *chip,
			 unsigned int reg, unsigned int value)
{
	struct xonar_wm87x6 *data = chip->model_data;

	if ((chip->model.function_flags & OXYGEN_FUNCTION_2WIRE_SPI_MASK) ==
	    OXYGEN_FUNCTION_SPI)
		FUNC2(chip, reg, value);
	else
		FUNC1(chip, reg, value);
	if (reg < FUNC0(data->wm8776_regs)) {
		if (reg >= WM8776_HPLVOL && reg <= WM8776_DACMASTER)
			value &= ~WM8776_UPDATE;
		data->wm8776_regs[reg] = value;
	}
}