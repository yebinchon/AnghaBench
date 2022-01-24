#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {unsigned int (* get_data ) (struct snd_ice1712*) ;int /*<<< orphan*/  (* set_data ) (struct snd_ice1712*,unsigned int) ;} ;
struct snd_ice1712 {TYPE_1__ gpio; struct juli_spec* spec; } ;
struct snd_akm4xxx {struct snd_ice1712** private_data; } ;
struct juli_spec {int /*<<< orphan*/  ak4114; } ;

/* Variables and functions */
 int /*<<< orphan*/  AC97_CMD ; 
 unsigned int GPIO_AK5385A_CKS0 ; 
 unsigned int GPIO_AK5385A_DFS0 ; 
 unsigned int GPIO_AK5385A_DFS1 ; 
 unsigned int GPIO_AK5385A_MASK ; 
 int /*<<< orphan*/  FUNC0 (struct snd_ice1712*,int /*<<< orphan*/ ) ; 
 unsigned char VT1724_AC97_COLD ; 
 unsigned char FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 unsigned char FUNC4 (struct snd_akm4xxx*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_akm4xxx*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct snd_akm4xxx*,int /*<<< orphan*/ ,int,unsigned char) ; 
 unsigned int FUNC7 (struct snd_ice1712*) ; 
 int /*<<< orphan*/  FUNC8 (struct snd_ice1712*,unsigned int) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 

__attribute__((used)) static void FUNC10(struct snd_akm4xxx *ak, unsigned int rate)
{
	unsigned char old, tmp, ak4358_dfs;
	unsigned int ak5385_pins, old_gpio, new_gpio;
	struct snd_ice1712 *ice = ak->private_data[0];
	struct juli_spec *spec = ice->spec;

	if (rate == 0)  /* no hint - S/PDIF input is master or the new spdif
			   input rate undetected, simply return */
		return;

	/* adjust DFS on codecs */
	if (rate > 96000)  {
		ak4358_dfs = 2;
		ak5385_pins = GPIO_AK5385A_DFS1 | GPIO_AK5385A_CKS0;
	} else if (rate > 48000) {
		ak4358_dfs = 1;
		ak5385_pins = GPIO_AK5385A_DFS0;
	} else {
		ak4358_dfs = 0;
		ak5385_pins = 0;
	}
	/* AK5385 first, since it requires cold reset affecting both codecs */
	old_gpio = ice->gpio.get_data(ice);
	new_gpio =  (old_gpio & ~GPIO_AK5385A_MASK) | ak5385_pins;
	/* printk(KERN_DEBUG "JULI - ak5385 set_rate_val: new gpio 0x%x\n",
		new_gpio); */
	ice->gpio.set_data(ice, new_gpio);

	/* cold reset */
	old = FUNC1(FUNC0(ice, AC97_CMD));
	FUNC2(old | VT1724_AC97_COLD, FUNC0(ice, AC97_CMD));
	FUNC9(1);
	FUNC2(old & ~VT1724_AC97_COLD, FUNC0(ice, AC97_CMD));

	/* AK4358 */
	/* set new value, reset DFS */
	tmp = FUNC4(ak, 0, 2);
	FUNC5(ak, 1);
	tmp = FUNC4(ak, 0, 2);
	tmp &= ~(0x03 << 4);
	tmp |= ak4358_dfs << 4;
	FUNC6(ak, 0, 2, tmp);
	FUNC5(ak, 0);

	/* reinit ak4114 */
	FUNC3(spec->ak4114);
}