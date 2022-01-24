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
struct vx_core {int dummy; } ;
struct snd_vxpocket {int /*<<< orphan*/  regDIALOG; } ;

/* Variables and functions */
 int /*<<< orphan*/  DIALOG ; 
 int /*<<< orphan*/  ICR ; 
 int /*<<< orphan*/  ICR_RREQ ; 
 int /*<<< orphan*/  ICR_TREQ ; 
 int /*<<< orphan*/  ISR ; 
 int /*<<< orphan*/  VXP_DLG_DMA16_SEL_MASK ; 
 int /*<<< orphan*/  VXP_DLG_DMAREAD_SEL_MASK ; 
 int /*<<< orphan*/  VXP_DLG_DMAWRITE_SEL_MASK ; 
 int /*<<< orphan*/  FUNC0 (struct snd_vxpocket*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_vxpocket*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct vx_core *_chip, int do_write)
{
	struct snd_vxpocket *chip = (struct snd_vxpocket *)_chip;

	/* Interrupt mode and HREQ pin enabled for host transmit / receive data transfers */
	FUNC1(chip, ICR, do_write ? ICR_TREQ : ICR_RREQ);
	/* Reset the pseudo-dma register */
	FUNC0(chip, ISR);
	FUNC1(chip, ISR, 0);

	/* Select DMA in read/write transfer mode and in 16-bit accesses */
	chip->regDIALOG |= VXP_DLG_DMA16_SEL_MASK;
	chip->regDIALOG |= do_write ? VXP_DLG_DMAWRITE_SEL_MASK : VXP_DLG_DMAREAD_SEL_MASK;
	FUNC1(chip, DIALOG, chip->regDIALOG);

}