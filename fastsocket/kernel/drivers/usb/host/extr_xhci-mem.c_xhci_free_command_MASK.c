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
struct xhci_hcd {int dummy; } ;
struct xhci_command {struct xhci_command* completion; int /*<<< orphan*/  in_ctx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct xhci_command*) ; 
 int /*<<< orphan*/  FUNC1 (struct xhci_hcd*,int /*<<< orphan*/ ) ; 

void FUNC2(struct xhci_hcd *xhci,
		struct xhci_command *command)
{
	FUNC1(xhci,
			command->in_ctx);
	FUNC0(command->completion);
	FUNC0(command);
}