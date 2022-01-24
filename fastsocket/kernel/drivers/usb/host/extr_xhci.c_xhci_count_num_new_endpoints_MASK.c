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
typedef  int u32 ;
struct xhci_input_control_ctx {int add_flags; int drop_flags; } ;
struct xhci_hcd {int dummy; } ;
struct xhci_container_ctx {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 struct xhci_input_control_ctx* FUNC1 (struct xhci_hcd*,struct xhci_container_ctx*) ; 

__attribute__((used)) static u32 FUNC2(struct xhci_hcd *xhci,
		struct xhci_container_ctx *in_ctx)
{
	struct xhci_input_control_ctx *ctrl_ctx;
	u32 valid_add_flags;
	u32 valid_drop_flags;

	ctrl_ctx = FUNC1(xhci, in_ctx);
	/* Ignore the slot flag (bit 0), and the default control endpoint flag
	 * (bit 1).  The default control endpoint is added during the Address
	 * Device command and is never removed until the slot is disabled.
	 */
	valid_add_flags = ctrl_ctx->add_flags >> 2;
	valid_drop_flags = ctrl_ctx->drop_flags >> 2;

	/* Use hweight32 to count the number of ones in the add flags, or
	 * number of endpoints added.  Don't count endpoints that are changed
	 * (both added and dropped).
	 */
	return FUNC0(valid_add_flags) -
		FUNC0(valid_add_flags & valid_drop_flags);
}