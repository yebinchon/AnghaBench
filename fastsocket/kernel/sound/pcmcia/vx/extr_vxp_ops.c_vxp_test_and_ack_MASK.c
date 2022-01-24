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
struct vx_core {int chip_status; } ;
struct snd_vxpocket {int regDIALOG; } ;

/* Variables and functions */
 int /*<<< orphan*/  DIALOG ; 
 int EIO ; 
 int ENXIO ; 
 int VXP_DLG_ACK_MEMIRQ_MASK ; 
 int VXP_DLG_MEMIRQ_MASK ; 
 int VX_STAT_XILINX_LOADED ; 
 int FUNC0 (struct snd_vxpocket*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_vxpocket*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC2(struct vx_core *_chip)
{
	struct snd_vxpocket *chip = (struct snd_vxpocket *)_chip;

	/* not booted yet? */
	if (! (_chip->chip_status & VX_STAT_XILINX_LOADED))
		return -ENXIO;

	if (! (FUNC0(chip, DIALOG) & VXP_DLG_MEMIRQ_MASK))
		return -EIO;
	
	/* ok, interrupts generated, now ack it */
	/* set ACQUIT bit up and down */
	FUNC1(chip, DIALOG, chip->regDIALOG | VXP_DLG_ACK_MEMIRQ_MASK);
	/* useless read just to spend some time and maintain
	 * the ACQUIT signal up for a while ( a bus cycle )
	 */
	FUNC0(chip, DIALOG);
	FUNC1(chip, DIALOG, chip->regDIALOG & ~VXP_DLG_ACK_MEMIRQ_MASK);

	return 0;
}