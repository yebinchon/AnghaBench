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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int uint16_t ;
struct TYPE_3__ {int /*<<< orphan*/  cmd; } ;
struct TYPE_4__ {TYPE_1__ reserved; } ;

/* Variables and functions */
 int /*<<< orphan*/  AR9170_USB_REG_EP4_BYTE_COUNT_HIGH ; 
 int /*<<< orphan*/  AR9170_USB_REG_EP4_BYTE_COUNT_LOW ; 
 int /*<<< orphan*/  AR9170_USB_REG_EP4_DATA ; 
 TYPE_2__ dma_mem ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 

__attribute__((used)) static void FUNC6(void)
{
	uint32_t *regaddr = (uint32_t *) &dma_mem.reserved.cmd;
	uint16_t usbfifolen, i;

	FUNC4();

	usbfifolen = FUNC2(AR9170_USB_REG_EP4_BYTE_COUNT_LOW) |
		     FUNC2(AR9170_USB_REG_EP4_BYTE_COUNT_HIGH) << 8;

	if (usbfifolen & 0x3)
		usbfifolen = (usbfifolen >> 2) + 1;
	else
		usbfifolen = usbfifolen >> 2;

	for (i = 0; i < usbfifolen; i++)
		*regaddr++ = FUNC0(AR9170_USB_REG_EP4_DATA);

	FUNC3(FUNC1());

	FUNC5();
}