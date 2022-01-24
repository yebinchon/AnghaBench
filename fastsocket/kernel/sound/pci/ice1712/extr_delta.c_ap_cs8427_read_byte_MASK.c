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
struct snd_ice1712 {int dummy; } ;

/* Variables and functions */
 unsigned char ICE1712_DELTA_AP_CCLK ; 
 int ICE1712_DELTA_AP_DIN ; 
 int /*<<< orphan*/  ICE1712_IREG_GPIO_DATA ; 
 int FUNC0 (struct snd_ice1712*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_ice1712*,int /*<<< orphan*/ ,unsigned char) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static unsigned char FUNC3(struct snd_ice1712 *ice, unsigned char tmp)
{
	unsigned char data = 0;
	int idx;
	
	for (idx = 7; idx >= 0; idx--) {
		tmp &= ~ICE1712_DELTA_AP_CCLK;
		FUNC1(ice, ICE1712_IREG_GPIO_DATA, tmp);
		FUNC2(5);
		if (FUNC0(ice, ICE1712_IREG_GPIO_DATA) & ICE1712_DELTA_AP_DIN)
			data |= 1 << idx;
		tmp |= ICE1712_DELTA_AP_CCLK;
		FUNC1(ice, ICE1712_IREG_GPIO_DATA, tmp);
		FUNC2(5);
	}
	return data;
}