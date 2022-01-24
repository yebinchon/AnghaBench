#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ expires; } ;
struct ak4117 {unsigned char* regmap; int init; TYPE_1__ timer; } ;

/* Variables and functions */
 unsigned char AK4117_PWN ; 
 size_t AK4117_REG_PWRDN ; 
 unsigned char AK4117_RST ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC2 (struct ak4117*,size_t,unsigned char) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

void FUNC4(struct ak4117 *chip)
{
	unsigned char old = chip->regmap[AK4117_REG_PWRDN], reg;

	FUNC1(&chip->timer);
	chip->init = 1;
	/* bring the chip to reset state and powerdown state */
	FUNC2(chip, AK4117_REG_PWRDN, 0);
	FUNC3(200);
	/* release reset, but leave powerdown */
	FUNC2(chip, AK4117_REG_PWRDN, (old | AK4117_RST) & ~AK4117_PWN);
	FUNC3(200);
	for (reg = 1; reg < 5; reg++)
		FUNC2(chip, reg, chip->regmap[reg]);
	/* release powerdown, everything is initialized now */
	FUNC2(chip, AK4117_REG_PWRDN, old | AK4117_RST | AK4117_PWN);
	chip->init = 0;
	chip->timer.expires = 1 + jiffies;
	FUNC0(&chip->timer);
}