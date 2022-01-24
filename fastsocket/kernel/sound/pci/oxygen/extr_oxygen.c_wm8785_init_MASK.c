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
struct oxygen {int /*<<< orphan*/  card; struct generic_data* model_data; } ;
struct generic_data {int* wm8785_regs; } ;

/* Variables and functions */
 int WM8785_FORMAT_LJUST ; 
 int WM8785_HPFL ; 
 int WM8785_HPFR ; 
 int WM8785_MCR_SLAVE ; 
 int WM8785_OSR_SINGLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct oxygen*) ; 

__attribute__((used)) static void FUNC2(struct oxygen *chip)
{
	struct generic_data *data = chip->model_data;

	data->wm8785_regs[0] =
		WM8785_MCR_SLAVE | WM8785_OSR_SINGLE | WM8785_FORMAT_LJUST;
	data->wm8785_regs[2] = WM8785_HPFR | WM8785_HPFL;
	FUNC1(chip);
	FUNC0(chip->card, "WM8785");
}