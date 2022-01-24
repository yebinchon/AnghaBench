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
typedef  size_t u8 ;
struct xonar_cs43xx {size_t* cs4398_regs; } ;
struct oxygen {struct xonar_cs43xx* model_data; } ;

/* Variables and functions */
 size_t FUNC0 (size_t*) ; 
 int /*<<< orphan*/  I2C_DEVICE_CS4398 ; 
 int /*<<< orphan*/  FUNC1 (struct oxygen*,int /*<<< orphan*/ ,size_t,size_t) ; 

__attribute__((used)) static void FUNC2(struct oxygen *chip, u8 reg, u8 value)
{
	struct xonar_cs43xx *data = chip->model_data;

	FUNC1(chip, I2C_DEVICE_CS4398, reg, value);
	if (reg < FUNC0(data->cs4398_regs))
		data->cs4398_regs[reg] = value;
}