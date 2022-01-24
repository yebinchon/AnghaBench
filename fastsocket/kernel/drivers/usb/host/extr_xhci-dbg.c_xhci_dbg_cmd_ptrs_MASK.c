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
typedef  int /*<<< orphan*/  u64 ;
struct xhci_hcd {TYPE_1__* op_regs; } ;
struct TYPE_2__ {int /*<<< orphan*/  cmd_ring; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct xhci_hcd*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct xhci_hcd*,int /*<<< orphan*/ *) ; 

void FUNC4(struct xhci_hcd *xhci)
{
	u64 val;

	val = FUNC3(xhci, &xhci->op_regs->cmd_ring);
	FUNC2(xhci, "// xHC command ring deq ptr low bits + flags = @%08x\n",
			FUNC0(val));
	FUNC2(xhci, "// xHC command ring deq ptr high bits = @%08x\n",
			FUNC1(val));
}