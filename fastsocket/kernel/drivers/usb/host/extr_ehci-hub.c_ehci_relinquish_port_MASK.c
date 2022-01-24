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
struct ehci_hcd {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PORT_OWNER ; 
 scalar_t__ FUNC0 (struct ehci_hcd*) ; 
 struct ehci_hcd* FUNC1 (struct usb_hcd*) ; 
 int /*<<< orphan*/  FUNC2 (struct ehci_hcd*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct usb_hcd *hcd, int portnum)
{
	struct ehci_hcd		*ehci = FUNC1(hcd);

	if (FUNC0(ehci))
		return;
	FUNC2(ehci, --portnum, PORT_OWNER);
}