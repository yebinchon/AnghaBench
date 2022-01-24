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
struct xhci_stream_info {int /*<<< orphan*/  ctx_array_dma; int /*<<< orphan*/  num_stream_ctxs; } ;
struct xhci_hcd {int dummy; } ;
struct xhci_ep_ctx {int /*<<< orphan*/  deq; int /*<<< orphan*/  ep_info; } ;

/* Variables and functions */
 int EP_HAS_LSA ; 
 int FUNC0 (int) ; 
 int EP_MAXPSTREAMS_MASK ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct xhci_hcd*,char*,int) ; 

void FUNC5(struct xhci_hcd *xhci,
		struct xhci_ep_ctx *ep_ctx,
		struct xhci_stream_info *stream_info)
{
	u32 max_primary_streams;
	/* MaxPStreams is the number of stream context array entries, not the
	 * number we're actually using.  Must be in 2^(MaxPstreams + 1) format.
	 * fls(0) = 0, fls(0x1) = 1, fls(0x10) = 2, fls(0x100) = 3, etc.
	 */
	max_primary_streams = FUNC3(stream_info->num_stream_ctxs) - 2;
	FUNC4(xhci, "Setting number of stream ctx array entries to %u\n",
			1 << (max_primary_streams + 1));
	ep_ctx->ep_info &= FUNC1(~EP_MAXPSTREAMS_MASK);
	ep_ctx->ep_info |= FUNC1(FUNC0(max_primary_streams)
				       | EP_HAS_LSA);
	ep_ctx->deq  = FUNC2(stream_info->ctx_array_dma);
}