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
struct snd_ice1712 {int /*<<< orphan*/  gpio_mutex; } ;
struct snd_akm4xxx {struct snd_ice1712** private_data; } ;

/* Variables and functions */
 unsigned char ICE1712_DELTA_DFS ; 
 int /*<<< orphan*/  ICE1712_IREG_GPIO_DATA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_akm4xxx*,int) ; 
 unsigned char FUNC3 (struct snd_ice1712*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_ice1712*,int /*<<< orphan*/ ,unsigned char) ; 

__attribute__((used)) static void FUNC5(struct snd_akm4xxx *ak, unsigned int rate)
{
	unsigned char tmp, tmp2;
	struct snd_ice1712 *ice = ak->private_data[0];

	if (rate == 0)	/* no hint - S/PDIF input is master, simply return */
		return;

	/* check before reset ak4524 to avoid unnecessary clicks */
	FUNC0(&ice->gpio_mutex);
	tmp = FUNC3(ice, ICE1712_IREG_GPIO_DATA);
	FUNC1(&ice->gpio_mutex);
	tmp2 = tmp & ~ICE1712_DELTA_DFS; 
	if (rate > 48000)
		tmp2 |= ICE1712_DELTA_DFS;
	if (tmp == tmp2)
		return;

	/* do it again */
	FUNC2(ak, 1);
	FUNC0(&ice->gpio_mutex);
	tmp = FUNC3(ice, ICE1712_IREG_GPIO_DATA) & ~ICE1712_DELTA_DFS;
	if (rate > 48000)
		tmp |= ICE1712_DELTA_DFS;
	FUNC4(ice, ICE1712_IREG_GPIO_DATA, tmp);
	FUNC1(&ice->gpio_mutex);
	FUNC2(ak, 0);
}