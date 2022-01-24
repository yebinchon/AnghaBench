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
typedef  int u16 ;
struct snd_pdacf {int suspend_reg_scr; scalar_t__ port; } ;

/* Variables and functions */
 int PDAUDIOCF_BLUE_LED_OFF ; 
 int PDAUDIOCF_IRQAKMEN ; 
 int PDAUDIOCF_IRQLVLEN0 ; 
 int PDAUDIOCF_IRQLVLEN1 ; 
 int PDAUDIOCF_IRQOVREN ; 
 int PDAUDIOCF_RED_LED_OFF ; 
 scalar_t__ PDAUDIOCF_REG_IER ; 
 int /*<<< orphan*/  PDAUDIOCF_REG_SCR ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__) ; 
 int FUNC2 (struct snd_pdacf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_pdacf*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_pdacf*,int) ; 

void FUNC5(struct snd_pdacf *chip)
{
	u16 val;

	val = FUNC2(chip, PDAUDIOCF_REG_SCR);
	chip->suspend_reg_scr = val;
	val |= PDAUDIOCF_RED_LED_OFF | PDAUDIOCF_BLUE_LED_OFF;
	FUNC3(chip, PDAUDIOCF_REG_SCR, val);
	/* disable interrupts, but use direct write to preserve old register value in chip->regmap */
	val = FUNC0(chip->port + PDAUDIOCF_REG_IER);
	val &= ~(PDAUDIOCF_IRQOVREN|PDAUDIOCF_IRQAKMEN|PDAUDIOCF_IRQLVLEN0|PDAUDIOCF_IRQLVLEN1);
	FUNC1(val, chip->port + PDAUDIOCF_REG_IER);
	FUNC4(chip, 1);
}