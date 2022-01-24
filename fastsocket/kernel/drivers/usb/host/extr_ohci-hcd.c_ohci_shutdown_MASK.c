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
struct usb_hcd {int dummy; } ;
struct ohci_hcd {TYPE_1__* regs; } ;
struct TYPE_2__ {int /*<<< orphan*/  control; int /*<<< orphan*/  intrdisable; } ;

/* Variables and functions */
 int /*<<< orphan*/  OHCI_INTR_MIE ; 
 struct ohci_hcd* FUNC0 (struct usb_hcd*) ; 
 int /*<<< orphan*/  FUNC1 (struct ohci_hcd*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct ohci_hcd*) ; 
 int /*<<< orphan*/  FUNC3 (struct ohci_hcd*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC4 (struct usb_hcd *hcd)
{
	struct ohci_hcd *ohci;

	ohci = FUNC0 (hcd);
	FUNC3 (ohci, OHCI_INTR_MIE, &ohci->regs->intrdisable);
	FUNC2 (ohci);
	/* flush the writes */
	(void) FUNC1 (ohci, &ohci->regs->control);
}