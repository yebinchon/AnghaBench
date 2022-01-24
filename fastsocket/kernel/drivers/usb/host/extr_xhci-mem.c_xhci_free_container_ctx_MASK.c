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
struct xhci_hcd {int /*<<< orphan*/  device_pool; } ;
struct xhci_container_ctx {int /*<<< orphan*/  dma; int /*<<< orphan*/  bytes; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct xhci_container_ctx*) ; 

__attribute__((used)) static void FUNC2(struct xhci_hcd *xhci,
			     struct xhci_container_ctx *ctx)
{
	if (!ctx)
		return;
	FUNC0(xhci->device_pool, ctx->bytes, ctx->dma);
	FUNC1(ctx);
}