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
typedef  scalar_t__ u8 ;
struct TYPE_2__ {int /*<<< orphan*/  (* uart_input ) (struct oxygen*) ;} ;
struct oxygen {scalar_t__ uart_input_count; TYPE_1__ model; scalar_t__* uart_input; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__*) ; 
 scalar_t__ MPU401_ACK ; 
 int /*<<< orphan*/  OXYGEN_MPU401 ; 
 scalar_t__ FUNC1 (struct oxygen*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct oxygen*) ; 
 int /*<<< orphan*/  FUNC3 (struct oxygen*) ; 
 scalar_t__ FUNC4 (int) ; 

__attribute__((used)) static void FUNC5(struct oxygen *chip)
{
	if (FUNC4(!FUNC2(chip))) {
		/* no data, but read it anyway to clear the interrupt */
		FUNC1(chip, OXYGEN_MPU401);
		return;
	}
	do {
		u8 data = FUNC1(chip, OXYGEN_MPU401);
		if (data == MPU401_ACK)
			continue;
		if (chip->uart_input_count >= FUNC0(chip->uart_input))
			chip->uart_input_count = 0;
		chip->uart_input[chip->uart_input_count++] = data;
	} while (FUNC2(chip));
	if (chip->model.uart_input)
		chip->model.uart_input(chip);
}