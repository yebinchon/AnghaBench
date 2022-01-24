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
struct xhci_hcd {int /*<<< orphan*/  op_regs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct xhci_hcd*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct xhci_hcd*) ; 
 int /*<<< orphan*/  FUNC2 (struct xhci_hcd*) ; 

__attribute__((used)) static void FUNC3(struct xhci_hcd *xhci)
{
	FUNC0(xhci, "xHCI operational registers at %p:\n", xhci->op_regs);
	FUNC1(xhci);
	FUNC2(xhci);
}