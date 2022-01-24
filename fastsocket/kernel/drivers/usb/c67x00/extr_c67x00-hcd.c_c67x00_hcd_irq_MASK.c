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
typedef  int u16 ;
struct usb_hcd {scalar_t__ state; int /*<<< orphan*/  flags; } ;
struct c67x00_sie {int /*<<< orphan*/  sie_num; struct c67x00_hcd* private_data; } ;
struct c67x00_hcd {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  HCD_FLAG_SAW_IRQ ; 
 int /*<<< orphan*/  FUNC0 (struct usb_hcd*) ; 
 scalar_t__ HC_STATE_HALT ; 
 int HUSB_TDListDone ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SOF_EOP_IRQ_FLG ; 
 int /*<<< orphan*/  FUNC2 (struct c67x00_hcd*) ; 
 struct usb_hcd* FUNC3 (struct c67x00_hcd*) ; 
 int /*<<< orphan*/  FUNC4 (struct c67x00_sie*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct c67x00_hcd*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int) ; 

__attribute__((used)) static void FUNC9(struct c67x00_sie *sie, u16 int_status, u16 msg)
{
	struct c67x00_hcd *c67x00 = sie->private_data;
	struct usb_hcd *hcd = FUNC3(c67x00);

	/* Handle sie message flags */
	if (msg) {
		if (msg & HUSB_TDListDone)
			FUNC5(c67x00);
		else
			FUNC6(FUNC2(c67x00),
				 "Unknown SIE msg flag(s): 0x%04x\n", msg);
	}

	if (FUNC8(hcd->state == HC_STATE_HALT))
		return;

	if (!FUNC0(hcd))
		return;

	/* Handle Start of frame events */
	if (int_status & FUNC1(sie->sie_num)) {
		FUNC4(sie, SOF_EOP_IRQ_FLG);
		FUNC5(c67x00);
		FUNC7(HCD_FLAG_SAW_IRQ, &hcd->flags);
	}
}