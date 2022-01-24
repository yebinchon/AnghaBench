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

/* Variables and functions */
 unsigned char ICE1712_DELTA_DFS ; 
 int /*<<< orphan*/  ICE1712_IREG_GPIO_DATA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 unsigned char FUNC2 (struct snd_ice1712*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_ice1712*,int /*<<< orphan*/ ,unsigned char) ; 

__attribute__((used)) static void FUNC4(struct snd_ice1712 *ice, unsigned int rate)
{
	unsigned char tmp, tmp2;

	if (rate == 0)	/* no hint - S/PDIF input is master, simply return */
		return;

	FUNC0(&ice->gpio_mutex);
	tmp = FUNC2(ice, ICE1712_IREG_GPIO_DATA);
	tmp2 = tmp & ~ICE1712_DELTA_DFS;
	if (rate > 48000)
		tmp2 |= ICE1712_DELTA_DFS;
	if (tmp != tmp2)
		FUNC3(ice, ICE1712_IREG_GPIO_DATA, tmp2);
	FUNC1(&ice->gpio_mutex);
}