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
struct TYPE_4__ {int /*<<< orphan*/  controller; } ;
struct usb_hcd {int irq; TYPE_2__ self; } ;
struct ohci_hcd {scalar_t__ hcca_dma; int /*<<< orphan*/ * hcca; int /*<<< orphan*/  unlink_watchdog; TYPE_1__* regs; } ;
struct TYPE_3__ {int /*<<< orphan*/  intrdisable; } ;

/* Variables and functions */
 int /*<<< orphan*/  OHCI_INTR_MIE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int,struct usb_hcd*) ; 
 struct ohci_hcd* FUNC4 (struct usb_hcd*) ; 
 int /*<<< orphan*/  FUNC5 (struct ohci_hcd*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct ohci_hcd*) ; 
 int /*<<< orphan*/  FUNC7 (struct ohci_hcd*) ; 
 int /*<<< orphan*/  FUNC8 (struct ohci_hcd*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (struct ohci_hcd*) ; 
 scalar_t__ FUNC10 (struct ohci_hcd*) ; 
 int /*<<< orphan*/  FUNC11 (struct ohci_hcd*) ; 
 int /*<<< orphan*/  FUNC12 () ; 

__attribute__((used)) static void FUNC13 (struct usb_hcd *hcd)
{
	struct ohci_hcd		*ohci = FUNC4 (hcd);

	FUNC5 (ohci, 1);

	FUNC2();

	FUNC7 (ohci);
	FUNC8 (ohci, OHCI_INTR_MIE, &ohci->regs->intrdisable);
	FUNC3(hcd->irq, hcd);
	hcd->irq = -1;

	if (FUNC10(ohci))
		FUNC0(&ohci->unlink_watchdog);
	if (FUNC9(ohci))
		FUNC12();

	FUNC11 (ohci);
	FUNC6 (ohci);
	if (ohci->hcca) {
		FUNC1 (hcd->self.controller,
				sizeof *ohci->hcca,
				ohci->hcca, ohci->hcca_dma);
		ohci->hcca = NULL;
		ohci->hcca_dma = 0;
	}
}