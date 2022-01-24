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
struct usb_hcd {int /*<<< orphan*/  rsrc_len; int /*<<< orphan*/  rsrc_start; int /*<<< orphan*/  regs; } ;
struct platform_device {int dummy; } ;
struct ohci_hcd {TYPE_1__* transceiver; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 struct ohci_hcd* FUNC2 (struct usb_hcd*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  usb_dc_ck ; 
 int /*<<< orphan*/  usb_host_ck ; 
 int /*<<< orphan*/  FUNC8 (struct usb_hcd*) ; 
 int /*<<< orphan*/  FUNC9 (struct usb_hcd*) ; 

__attribute__((used)) static inline void
FUNC10 (struct usb_hcd *hcd, struct platform_device *pdev)
{
	struct ohci_hcd		*ohci = FUNC2 (hcd);

	FUNC9(hcd);
	if (ohci->transceiver) {
		(void) FUNC5(ohci->transceiver, 0);
		FUNC6(ohci->transceiver->dev);
	}
	if (FUNC4())
		FUNC1(9);
	FUNC3(hcd->regs);
	FUNC7(hcd->rsrc_start, hcd->rsrc_len);
	FUNC8(hcd);
	FUNC0(usb_dc_ck);
	FUNC0(usb_host_ck);
}