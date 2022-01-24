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
struct snd_ac97 {int /*<<< orphan*/  num; struct atiixp_modem* private_data; } ;
struct atiixp_modem {int dummy; } ;

/* Variables and functions */
 unsigned short AC97_GPIO_STATUS ; 
 unsigned short ATI_REG_MODEM_OUT_GPIO_DATA_SHIFT ; 
 unsigned short ATI_REG_MODEM_OUT_GPIO_EN ; 
 int /*<<< orphan*/  MODEM_OUT_GPIO ; 
 int /*<<< orphan*/  FUNC0 (struct atiixp_modem*,int /*<<< orphan*/ ,unsigned short) ; 
 int /*<<< orphan*/  FUNC1 (struct atiixp_modem*,int /*<<< orphan*/ ,unsigned short,unsigned short) ; 

__attribute__((used)) static void FUNC2(struct snd_ac97 *ac97, unsigned short reg,
				  unsigned short val)
{
	struct atiixp_modem *chip = ac97->private_data;
	if (reg == AC97_GPIO_STATUS) {
		FUNC0(chip, MODEM_OUT_GPIO,
			(val << ATI_REG_MODEM_OUT_GPIO_DATA_SHIFT) | ATI_REG_MODEM_OUT_GPIO_EN);
		return;
	}
	FUNC1(chip, ac97->num, reg, val);
}