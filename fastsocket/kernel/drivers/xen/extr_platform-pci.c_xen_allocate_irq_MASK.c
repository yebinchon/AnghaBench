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
struct pci_dev {int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int IRQF_DISABLED ; 
 int IRQF_NOBALANCING ; 
 int IRQF_TRIGGER_RISING ; 
 int /*<<< orphan*/  do_hvm_evtchn_intr ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*,struct pci_dev*) ; 

__attribute__((used)) static int FUNC1(struct pci_dev *pdev)
{
	return FUNC0(pdev->irq, do_hvm_evtchn_intr,
			IRQF_DISABLED | IRQF_NOBALANCING | IRQF_TRIGGER_RISING,
			"xen-platform-pci", pdev);
}