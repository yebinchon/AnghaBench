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
struct via82xx {int dummy; } ;
struct snd_ac97 {int /*<<< orphan*/  num; struct via82xx* private_data; } ;

/* Variables and functions */
 unsigned short VIA_REG_AC97_CMD_SHIFT ; 
 unsigned int VIA_REG_AC97_CODEC_ID_PRIMARY ; 
 unsigned int VIA_REG_AC97_CODEC_ID_SECONDARY ; 
 unsigned int VIA_REG_AC97_CODEC_ID_SHIFT ; 
 unsigned short VIA_REG_AC97_DATA_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (struct via82xx*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct via82xx*,unsigned int) ; 

__attribute__((used)) static void FUNC2(struct snd_ac97 *ac97,
				    unsigned short reg,
				    unsigned short val)
{
	struct via82xx *chip = ac97->private_data;
	unsigned int xval;

	xval = !ac97->num ? VIA_REG_AC97_CODEC_ID_PRIMARY : VIA_REG_AC97_CODEC_ID_SECONDARY;
	xval <<= VIA_REG_AC97_CODEC_ID_SHIFT;
	xval |= reg << VIA_REG_AC97_CMD_SHIFT;
	xval |= val << VIA_REG_AC97_DATA_SHIFT;
	FUNC1(chip, xval);
	FUNC0(chip, ac97->num);
}