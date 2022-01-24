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
struct xhci_slot_ctx {int /*<<< orphan*/  dev_state; } ;
struct xhci_hcd {int dummy; } ;
struct xhci_container_ctx {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
#define  SLOT_STATE_ADDRESSED 131 
#define  SLOT_STATE_CONFIGURED 130 
#define  SLOT_STATE_DEFAULT 129 
#define  SLOT_STATE_ENABLED 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct xhci_slot_ctx* FUNC2 (struct xhci_hcd*,struct xhci_container_ctx*) ; 

char *FUNC3(struct xhci_hcd *xhci,
		struct xhci_container_ctx *ctx)
{
	struct xhci_slot_ctx *slot_ctx = FUNC2(xhci, ctx);

	switch (FUNC0(FUNC1(slot_ctx->dev_state))) {
	case SLOT_STATE_ENABLED:
		return "enabled/disabled";
	case SLOT_STATE_DEFAULT:
		return "default";
	case SLOT_STATE_ADDRESSED:
		return "addressed";
	case SLOT_STATE_CONFIGURED:
		return "configured";
	default:
		return "reserved";
	}
}