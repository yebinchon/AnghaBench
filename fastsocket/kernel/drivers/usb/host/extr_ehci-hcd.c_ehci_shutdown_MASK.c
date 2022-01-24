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
struct ehci_hcd {int /*<<< orphan*/  lock; int /*<<< orphan*/  iaa_watchdog; int /*<<< orphan*/  watchdog; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct ehci_hcd*) ; 
 struct ehci_hcd* FUNC2 (struct usb_hcd*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct usb_hcd *hcd)
{
	struct ehci_hcd	*ehci = FUNC2(hcd);

	FUNC0(&ehci->watchdog);
	FUNC0(&ehci->iaa_watchdog);

	FUNC3(&ehci->lock);
	FUNC1(ehci);
	FUNC4(&ehci->lock);
}