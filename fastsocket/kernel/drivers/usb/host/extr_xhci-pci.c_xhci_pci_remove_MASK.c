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
struct xhci_hcd {scalar_t__ shared_hcd; } ;
struct pci_dev {int dummy; } ;

/* Variables and functions */
 struct xhci_hcd* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct xhci_hcd*) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 

__attribute__((used)) static void FUNC6(struct pci_dev *dev)
{
	struct xhci_hcd *xhci;

	xhci = FUNC0(FUNC2(dev));
	if (xhci->shared_hcd) {
		FUNC5(xhci->shared_hcd);
		FUNC4(xhci->shared_hcd);
	}
	FUNC3(dev);
	FUNC1(xhci);
}