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
struct xhci_command {int /*<<< orphan*/  cmd_list; scalar_t__ status; void* completion; int /*<<< orphan*/  in_ctx; } ;
struct completion {int dummy; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  XHCI_CTX_TYPE_INPUT ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (struct xhci_command*) ; 
 void* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct xhci_hcd*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct xhci_hcd*,int /*<<< orphan*/ ) ; 

struct xhci_command *FUNC6(struct xhci_hcd *xhci,
		bool allocate_in_ctx, bool allocate_completion,
		gfp_t mem_flags)
{
	struct xhci_command *command;

	command = FUNC3(sizeof(*command), mem_flags);
	if (!command)
		return NULL;

	if (allocate_in_ctx) {
		command->in_ctx =
			FUNC4(xhci, XHCI_CTX_TYPE_INPUT,
					mem_flags);
		if (!command->in_ctx) {
			FUNC2(command);
			return NULL;
		}
	}

	if (allocate_completion) {
		command->completion =
			FUNC3(sizeof(struct completion), mem_flags);
		if (!command->completion) {
			FUNC5(xhci, command->in_ctx);
			FUNC2(command);
			return NULL;
		}
		FUNC1(command->completion);
	}

	command->status = 0;
	FUNC0(&command->cmd_list);
	return command;
}