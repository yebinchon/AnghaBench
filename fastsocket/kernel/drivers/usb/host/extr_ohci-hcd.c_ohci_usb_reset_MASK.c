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
struct ohci_hcd {TYPE_1__* regs; int /*<<< orphan*/  hc_control; } ;
struct TYPE_2__ {int /*<<< orphan*/  control; } ;

/* Variables and functions */
 int /*<<< orphan*/  OHCI_CTRL_RWC ; 
 int /*<<< orphan*/  FUNC0 (struct ohci_hcd*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct ohci_hcd*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2 (struct ohci_hcd *ohci)
{
	ohci->hc_control = FUNC0 (ohci, &ohci->regs->control);
	ohci->hc_control &= OHCI_CTRL_RWC;
	FUNC1 (ohci, ohci->hc_control, &ohci->regs->control);
}