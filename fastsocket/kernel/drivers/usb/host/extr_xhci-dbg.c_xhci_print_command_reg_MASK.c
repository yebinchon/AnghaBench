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
struct TYPE_2__ {int /*<<< orphan*/  command; } ;

/* Variables and functions */
 int CMD_EIE ; 
 int CMD_HSEIE ; 
 int CMD_LRESET ; 
 int CMD_RESET ; 
 int CMD_RUN ; 
 int /*<<< orphan*/  FUNC0 (struct xhci_hcd*,char*,...) ; 
 int FUNC1 (struct xhci_hcd*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct xhci_hcd *xhci)
{
	u32 temp;

	temp = FUNC1(xhci, &xhci->op_regs->command);
	FUNC0(xhci, "USBCMD 0x%x:\n", temp);
	FUNC0(xhci, "  HC is %s\n",
			(temp & CMD_RUN) ? "running" : "being stopped");
	FUNC0(xhci, "  HC has %sfinished hard reset\n",
			(temp & CMD_RESET) ? "not " : "");
	FUNC0(xhci, "  Event Interrupts %s\n",
			(temp & CMD_EIE) ? "enabled " : "disabled");
	FUNC0(xhci, "  Host System Error Interrupts %s\n",
			(temp & CMD_HSEIE) ? "enabled " : "disabled");
	FUNC0(xhci, "  HC has %sfinished light reset\n",
			(temp & CMD_LRESET) ? "not " : "");
}