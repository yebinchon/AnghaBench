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
struct snd_vxpocket {int regCDSP; } ;

/* Variables and functions */
 int /*<<< orphan*/  CDSP ; 
 int VXP_CDSP_CODEC_RESET_MASK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_vxpocket*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_vxpocket*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(struct vx_core *_chip)
{
	struct snd_vxpocket *chip = (struct snd_vxpocket *)_chip;

	/* Set the reset CODEC bit to 1. */
	FUNC2(chip, CDSP, chip->regCDSP | VXP_CDSP_CODEC_RESET_MASK);
	FUNC1(chip, CDSP);
	FUNC0(10);
	/* Set the reset CODEC bit to 0. */
	chip->regCDSP &= ~VXP_CDSP_CODEC_RESET_MASK;
	FUNC2(chip, CDSP, chip->regCDSP);
	FUNC1(chip, CDSP);
	FUNC0(1);
}