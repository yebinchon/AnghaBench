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
typedef  int u32 ;
struct xhci_hcd {TYPE_1__* op_regs; } ;
struct TYPE_2__ {int /*<<< orphan*/  status; } ;

/* Variables and functions */
 int STS_EINT ; 
 int STS_FATAL ; 
 int STS_HALT ; 
 int /*<<< orphan*/  FUNC0 (struct xhci_hcd*,char*,...) ; 
 int FUNC1 (struct xhci_hcd*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct xhci_hcd *xhci)
{
	u32 temp;

	temp = FUNC1(xhci, &xhci->op_regs->status);
	FUNC0(xhci, "USBSTS 0x%x:\n", temp);
	FUNC0(xhci, "  Event ring is %sempty\n",
			(temp & STS_EINT) ? "not " : "");
	FUNC0(xhci, "  %sHost System Error\n",
			(temp & STS_FATAL) ? "WARNING: " : "No ");
	FUNC0(xhci, "  HC is %s\n",
			(temp & STS_HALT) ? "halted" : "running");
}