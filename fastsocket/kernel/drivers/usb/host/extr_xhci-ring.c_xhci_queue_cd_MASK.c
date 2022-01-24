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
typedef  union xhci_trb {int dummy; } xhci_trb ;
struct xhci_hcd {int /*<<< orphan*/  cancel_cmd_list; } ;
struct xhci_command {int dummy; } ;
struct xhci_cd {int /*<<< orphan*/  cancel_cmd_list; union xhci_trb* cmd_trb; struct xhci_command* command; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct xhci_cd* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct xhci_hcd *xhci,
		struct xhci_command *command,
		union xhci_trb *cmd_trb)
{
	struct xhci_cd *cd;
	cd = FUNC1(sizeof(struct xhci_cd), GFP_ATOMIC);
	if (!cd)
		return -ENOMEM;
	FUNC0(&cd->cancel_cmd_list);

	cd->command = command;
	cd->cmd_trb = cmd_trb;
	FUNC2(&cd->cancel_cmd_list, &xhci->cancel_cmd_list);

	return 0;
}