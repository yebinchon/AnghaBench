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
typedef  int /*<<< orphan*/  u64 ;
struct xhci_input_control_ctx {int /*<<< orphan*/ * rsvd2; int /*<<< orphan*/  add_flags; int /*<<< orphan*/  drop_flags; } ;
struct xhci_hcd {int /*<<< orphan*/  hcc_params; } ;
struct xhci_container_ctx {scalar_t__ type; scalar_t__ dma; } ;
typedef  scalar_t__ dma_addr_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ XHCI_CTX_TYPE_INPUT ; 
 int /*<<< orphan*/  FUNC1 (struct xhci_hcd*,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct xhci_hcd*,char*,int /*<<< orphan*/ *,unsigned long long,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC3 (struct xhci_hcd*,struct xhci_container_ctx*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct xhci_hcd*,struct xhci_container_ctx*) ; 
 struct xhci_input_control_ctx* FUNC5 (struct xhci_hcd*,struct xhci_container_ctx*) ; 

void FUNC6(struct xhci_hcd *xhci,
		  struct xhci_container_ctx *ctx,
		  unsigned int last_ep)
{
	int i;
	/* Fields are 32 bits wide, DMA addresses are in bytes */
	int field_size = 32 / 8;
	dma_addr_t dma = ctx->dma;
	int csz = FUNC0(xhci->hcc_params);

	if (ctx->type == XHCI_CTX_TYPE_INPUT) {
		struct xhci_input_control_ctx *ctrl_ctx =
			FUNC5(xhci, ctx);
		FUNC2(xhci, "@%p (virt) @%08llx (dma) %#08x - drop flags\n",
			 &ctrl_ctx->drop_flags, (unsigned long long)dma,
			 ctrl_ctx->drop_flags);
		dma += field_size;
		FUNC2(xhci, "@%p (virt) @%08llx (dma) %#08x - add flags\n",
			 &ctrl_ctx->add_flags, (unsigned long long)dma,
			 ctrl_ctx->add_flags);
		dma += field_size;
		for (i = 0; i < 6; ++i) {
			FUNC2(xhci, "@%p (virt) @%08llx (dma) %#08x - rsvd2[%d]\n",
				 &ctrl_ctx->rsvd2[i], (unsigned long long)dma,
				 ctrl_ctx->rsvd2[i], i);
			dma += field_size;
		}

		if (csz)
			FUNC1(xhci, (u64 *)ctrl_ctx, dma);
	}

	FUNC4(xhci, ctx);
	FUNC3(xhci, ctx, last_ep);
}