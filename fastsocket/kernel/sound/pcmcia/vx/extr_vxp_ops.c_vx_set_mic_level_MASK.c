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
 int /*<<< orphan*/  MICRO ; 
 int VXP_CDSP_MIC_SEL_MASK ; 
 int VX_STAT_IS_STALE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct vx_core*,int /*<<< orphan*/ ,int) ; 

void FUNC4(struct vx_core *chip, int level)
{
	struct snd_vxpocket *pchip = (struct snd_vxpocket *)chip;
	unsigned long flags;

	if (chip->chip_status & VX_STAT_IS_STALE)
		return;

	FUNC0(&chip->lock, flags);
	if (pchip->regCDSP & VXP_CDSP_MIC_SEL_MASK) {
		level = FUNC2(level);
		FUNC3(chip, MICRO, level);
	}
	FUNC1(&chip->lock, flags);
}