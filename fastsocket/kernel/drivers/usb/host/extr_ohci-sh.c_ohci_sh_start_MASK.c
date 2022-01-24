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
struct usb_hcd {int /*<<< orphan*/  state; } ;
struct ohci_hcd {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  HC_STATE_RUNNING ; 
 struct ohci_hcd* FUNC0 (struct usb_hcd*) ; 
 int /*<<< orphan*/  FUNC1 (struct ohci_hcd*) ; 
 int /*<<< orphan*/  FUNC2 (struct ohci_hcd*) ; 
 int /*<<< orphan*/  FUNC3 (struct ohci_hcd*) ; 

__attribute__((used)) static int FUNC4(struct usb_hcd *hcd)
{
	struct ohci_hcd	*ohci = FUNC0(hcd);

	FUNC1(ohci);
	FUNC2(ohci);
	FUNC3(ohci);
	hcd->state = HC_STATE_RUNNING;
	return 0;
}