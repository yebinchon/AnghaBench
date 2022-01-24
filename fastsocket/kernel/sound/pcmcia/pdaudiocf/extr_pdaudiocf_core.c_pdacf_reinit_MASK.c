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
struct snd_pdacf {int /*<<< orphan*/ * regmap; int /*<<< orphan*/  ak4117; int /*<<< orphan*/  suspend_reg_scr; } ;

/* Variables and functions */
 int PDAUDIOCF_REG_IER ; 
 int PDAUDIOCF_REG_SCR ; 
 int PDAUDIOCF_REG_TCR ; 
 int /*<<< orphan*/  FUNC0 (struct snd_pdacf*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_pdacf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

void FUNC3(struct snd_pdacf *chip, int resume)
{
	FUNC1(chip, 0);
	if (resume)
		FUNC0(chip, PDAUDIOCF_REG_SCR, chip->suspend_reg_scr);
	FUNC2(chip->ak4117);
	FUNC0(chip, PDAUDIOCF_REG_TCR, chip->regmap[PDAUDIOCF_REG_TCR>>1]);
	FUNC0(chip, PDAUDIOCF_REG_IER, chip->regmap[PDAUDIOCF_REG_IER>>1]);
}