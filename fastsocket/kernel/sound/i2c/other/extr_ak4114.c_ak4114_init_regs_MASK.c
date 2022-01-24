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
struct ak4114 {unsigned char* regmap; unsigned char* txcsb; } ;

/* Variables and functions */
 unsigned char AK4114_PWN ; 
 size_t AK4114_REG_PWRDN ; 
 unsigned char AK4114_REG_TXCSB0 ; 
 unsigned char AK4114_RST ; 
 int /*<<< orphan*/  FUNC0 (struct ak4114*,size_t,unsigned char) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static void FUNC2(struct ak4114 *chip)
{
	unsigned char old = chip->regmap[AK4114_REG_PWRDN], reg;

	/* bring the chip to reset state and powerdown state */
	FUNC0(chip, AK4114_REG_PWRDN, old & ~(AK4114_RST|AK4114_PWN));
	FUNC1(200);
	/* release reset, but leave powerdown */
	FUNC0(chip, AK4114_REG_PWRDN, (old | AK4114_RST) & ~AK4114_PWN);
	FUNC1(200);
	for (reg = 1; reg < 7; reg++)
		FUNC0(chip, reg, chip->regmap[reg]);
	for (reg = 0; reg < 5; reg++)
		FUNC0(chip, reg + AK4114_REG_TXCSB0, chip->txcsb[reg]);
	/* release powerdown, everything is initialized now */
	FUNC0(chip, AK4114_REG_PWRDN, old | AK4114_RST | AK4114_PWN);
}