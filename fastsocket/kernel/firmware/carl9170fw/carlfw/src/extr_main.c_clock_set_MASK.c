#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
typedef  enum cpu_clock_t { ____Placeholder_cpu_clock_t } cpu_clock_t ;
struct TYPE_3__ {int frequency; } ;
struct TYPE_4__ {int ticks_per_usec; TYPE_1__ phy; } ;

/* Variables and functions */
#define  AHB_20_22MHZ 131 
#define  AHB_40MHZ_OSC 130 
#define  AHB_40_44MHZ 129 
#define  AHB_80_88MHZ 128 
 int /*<<< orphan*/  AR9170_PWR_PLL_ADDAC_DIV ; 
 int /*<<< orphan*/  AR9170_PWR_REG_CLOCK_SEL ; 
 int /*<<< orphan*/  AR9170_PWR_REG_PLL_ADDAC ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__ fw ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 

void FUNC3(enum cpu_clock_t clock_, bool on)
{
	/*
	 * Word of Warning!
	 * This setting does more than just mess with the CPU Clock.
	 * So watch out, if you need _stable_ timer interrupts.
	 */
#ifdef CONFIG_CARL9170FW_RADIO_FUNCTIONS
	if (fw.phy.frequency < 3000000)
		set(AR9170_PWR_REG_PLL_ADDAC, 0x5163);
	else
		set(AR9170_PWR_REG_PLL_ADDAC, 0x5143);
#else
	FUNC2(AR9170_PWR_REG_PLL_ADDAC, 0x5163);
#endif /* CONFIG_CARL9170FW_RADIO_FUNCTIONS */

	fw.ticks_per_usec = FUNC0(AR9170_PWR_PLL_ADDAC_DIV,
		FUNC1(AR9170_PWR_REG_PLL_ADDAC));

	FUNC2(AR9170_PWR_REG_CLOCK_SEL, (uint32_t) ((on ? 0x70 : 0x600) | clock_));

	switch (clock_) {
	case AHB_20_22MHZ:
		fw.ticks_per_usec >>= 1;
	case AHB_40MHZ_OSC:
	case AHB_40_44MHZ:
		fw.ticks_per_usec >>= 1;
	case AHB_80_88MHZ:
		break;
	}
}