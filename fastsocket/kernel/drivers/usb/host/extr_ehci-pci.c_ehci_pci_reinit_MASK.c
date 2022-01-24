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
struct pci_dev {int dummy; } ;
struct ehci_hcd {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ehci_hcd*,char*) ; 
 int FUNC1 (struct pci_dev*) ; 

__attribute__((used)) static int FUNC2(struct ehci_hcd *ehci, struct pci_dev *pdev)
{
	int			retval;

	/* we expect static quirk code to handle the "extended capabilities"
	 * (currently just BIOS handoff) allowed starting with EHCI 0.96
	 */

	/* PCI Memory-Write-Invalidate cycle support is optional (uncommon) */
	retval = FUNC1(pdev);
	if (!retval)
		FUNC0(ehci, "MWI active\n");

	return 0;
}