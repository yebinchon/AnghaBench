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
struct usb_hcd {int dummy; } ;
struct ohci_hcd {int /*<<< orphan*/  nec_work; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OHCI_QUIRK_NEC ; 
 struct ohci_hcd* FUNC1 (struct usb_hcd*) ; 
 int /*<<< orphan*/  FUNC2 (struct ohci_hcd*,char*) ; 
 int /*<<< orphan*/  ohci_quirk_nec_worker ; 

__attribute__((used)) static int FUNC3(struct usb_hcd *hcd)
{
	struct ohci_hcd	*ohci = FUNC1 (hcd);

	ohci->flags |= OHCI_QUIRK_NEC;
	FUNC0(&ohci->nec_work, ohci_quirk_nec_worker);
	FUNC2 (ohci, "enabled NEC chipset lost interrupt quirk\n");

	return 0;
}