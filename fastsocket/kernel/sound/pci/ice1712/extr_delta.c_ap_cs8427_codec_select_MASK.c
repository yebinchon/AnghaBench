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
struct TYPE_2__ {int subvendor; } ;
struct snd_ice1712 {TYPE_1__ eeprom; } ;

/* Variables and functions */
 unsigned char ICE1712_DELTA_1010LT_CCLK ; 
 unsigned char ICE1712_DELTA_1010LT_CS ; 
 unsigned char ICE1712_DELTA_1010LT_CS_CS8427 ; 
 unsigned char ICE1712_DELTA_AP_CCLK ; 
 unsigned char ICE1712_DELTA_AP_CS_CODEC ; 
 unsigned char ICE1712_DELTA_AP_CS_DIGITAL ; 
 int /*<<< orphan*/  ICE1712_IREG_GPIO_DATA ; 
#define  ICE1712_SUBDEVICE_AUDIOPHILE 132 
#define  ICE1712_SUBDEVICE_DELTA1010E 131 
#define  ICE1712_SUBDEVICE_DELTA1010LT 130 
#define  ICE1712_SUBDEVICE_DELTA410 129 
#define  ICE1712_SUBDEVICE_VX442 128 
 unsigned char ICE1712_VX442_CCLK ; 
 unsigned char ICE1712_VX442_CODEC_CHIP_A ; 
 unsigned char ICE1712_VX442_CODEC_CHIP_B ; 
 unsigned char ICE1712_VX442_CS_DIGITAL ; 
 unsigned char FUNC0 (struct snd_ice1712*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_ice1712*,int /*<<< orphan*/ ,unsigned char) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static unsigned char FUNC3(struct snd_ice1712 *ice)
{
	unsigned char tmp;
	tmp = FUNC0(ice, ICE1712_IREG_GPIO_DATA);
	switch (ice->eeprom.subvendor) {
	case ICE1712_SUBDEVICE_DELTA1010E:
	case ICE1712_SUBDEVICE_DELTA1010LT:
		tmp &= ~ICE1712_DELTA_1010LT_CS;
		tmp |= ICE1712_DELTA_1010LT_CCLK | ICE1712_DELTA_1010LT_CS_CS8427;
		break;
	case ICE1712_SUBDEVICE_AUDIOPHILE:
	case ICE1712_SUBDEVICE_DELTA410:
		tmp |= ICE1712_DELTA_AP_CCLK | ICE1712_DELTA_AP_CS_CODEC;
		tmp &= ~ICE1712_DELTA_AP_CS_DIGITAL;
		break;
	case ICE1712_SUBDEVICE_VX442:
		tmp |= ICE1712_VX442_CCLK | ICE1712_VX442_CODEC_CHIP_A | ICE1712_VX442_CODEC_CHIP_B;
		tmp &= ~ICE1712_VX442_CS_DIGITAL;
		break;
	}
	FUNC1(ice, ICE1712_IREG_GPIO_DATA, tmp);
	FUNC2(5);
	return tmp;
}