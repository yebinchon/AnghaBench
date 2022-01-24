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
struct vx_core {int chip_status; int /*<<< orphan*/  lock; } ;
struct snd_vxpocket {int regCDSP; } ;

/* Variables and functions */
 int /*<<< orphan*/  CDSP ; 
 int P24_CDSP_MIC20_SEL_MASK ; 
 int P24_CDSP_MIC38_SEL_MASK ; 
 int P24_CDSP_MICS_SEL_MASK ; 
 int VX_STAT_IS_STALE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (struct vx_core*,int /*<<< orphan*/ ,int) ; 

void FUNC3(struct vx_core *chip, int boost)
{
	struct snd_vxpocket *pchip = (struct snd_vxpocket *)chip;
	unsigned long flags;

	if (chip->chip_status & VX_STAT_IS_STALE)
		return;

	FUNC0(&chip->lock, flags);
	if (pchip->regCDSP & P24_CDSP_MICS_SEL_MASK) {
		if (boost) {
			/* boost: 38 dB */
			pchip->regCDSP &= ~P24_CDSP_MIC20_SEL_MASK;
			pchip->regCDSP |=  P24_CDSP_MIC38_SEL_MASK;
		} else {
			/* minimum value: 20 dB */
			pchip->regCDSP |=  P24_CDSP_MIC20_SEL_MASK;
			pchip->regCDSP &= ~P24_CDSP_MIC38_SEL_MASK;
                }
		FUNC2(chip, CDSP, pchip->regCDSP);
	}
	FUNC1(&chip->lock, flags);
}