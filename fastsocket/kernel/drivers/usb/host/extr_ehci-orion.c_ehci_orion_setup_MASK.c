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
struct usb_hcd {int has_tt; } ;
struct ehci_hcd {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct ehci_hcd*) ; 
 int FUNC1 (struct usb_hcd*) ; 
 int /*<<< orphan*/  FUNC2 (struct ehci_hcd*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ehci_hcd*) ; 
 struct ehci_hcd* FUNC4 (struct usb_hcd*) ; 

__attribute__((used)) static int FUNC5(struct usb_hcd *hcd)
{
	struct ehci_hcd *ehci = FUNC4(hcd);
	int retval;

	FUNC3(ehci);
	retval = FUNC0(ehci);
	if (retval)
		return retval;

	/*
	 * data structure init
	 */
	retval = FUNC1(hcd);
	if (retval)
		return retval;

	hcd->has_tt = 1;

	FUNC2(ehci, 0);

	return retval;
}