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
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct omap_udc {int /*<<< orphan*/  gadget; } ;

/* Variables and functions */
 int /*<<< orphan*/  OTG_BSESSVLD ; 
 int /*<<< orphan*/  OTG_CTRL ; 
 int /*<<< orphan*/  UDC_DS_CHG_IE ; 
 int /*<<< orphan*/  UDC_IRQ_EN ; 
 int /*<<< orphan*/  UDC_PULLUP_EN ; 
 int /*<<< orphan*/  UDC_SYSCON1 ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct omap_udc *udc)
{
	u16 w;

	w = FUNC3(UDC_SYSCON1);
	w |= UDC_PULLUP_EN;
	FUNC5(w, UDC_SYSCON1);
	if (!FUNC1(&udc->gadget) && !FUNC0()) {
		u32 l;

		l = FUNC2(OTG_CTRL);
		l |= OTG_BSESSVLD;
		FUNC4(l, OTG_CTRL);
	}
	FUNC5(UDC_DS_CHG_IE, UDC_IRQ_EN);
}