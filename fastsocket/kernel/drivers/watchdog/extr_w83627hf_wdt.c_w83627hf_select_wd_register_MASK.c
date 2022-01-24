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

/* Variables and functions */
 int /*<<< orphan*/  WDT_EFDR ; 
 int /*<<< orphan*/  WDT_EFER ; 
 unsigned char FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(void)
{
	unsigned char c;
	FUNC3(0x87, WDT_EFER); /* Enter extended function mode */
	FUNC3(0x87, WDT_EFER); /* Again according to manual */

	FUNC2(0x20, WDT_EFER);	/* check chip version	*/
	c = FUNC0(WDT_EFDR);
	if (c == 0x82) {	/* W83627THF		*/
		FUNC3(0x2b, WDT_EFER); /* select GPIO3 */
		c = ((FUNC1(WDT_EFDR) & 0xf7) | 0x04); /* select WDT0 */
		FUNC3(0x2b, WDT_EFER);
		FUNC3(c, WDT_EFDR);	/* set GPIO3 to WDT0 */
	} else if (c == 0x88) {	/* W83627EHF */
		FUNC3(0x2d, WDT_EFER); /* select GPIO5 */
		c = FUNC1(WDT_EFDR) & ~0x01; /* PIN77 -> WDT0# */
		FUNC3(0x2d, WDT_EFER);
		FUNC3(c, WDT_EFDR); /* set GPIO5 to WDT0 */
	}

	FUNC3(0x07, WDT_EFER); /* point to logical device number reg */
	FUNC3(0x08, WDT_EFDR); /* select logical device 8 (GPIO2) */
	FUNC3(0x30, WDT_EFER); /* select CR30 */
	FUNC3(0x01, WDT_EFDR); /* set bit 0 to activate GPIO2 */
}