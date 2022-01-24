#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct xhci_stream_ctx {int dummy; } ;
struct xhci_hcd {int /*<<< orphan*/  medium_streams_pool; int /*<<< orphan*/  small_streams_pool; } ;
struct pci_dev {int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;
struct TYPE_3__ {int /*<<< orphan*/  controller; } ;
struct TYPE_4__ {TYPE_1__ self; } ;

/* Variables and functions */
 unsigned int MEDIUM_STREAM_ARRAY_SIZE ; 
 unsigned int SMALL_STREAM_ARRAY_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,struct xhci_stream_ctx*,int /*<<< orphan*/ ) ; 
 void FUNC1 (int /*<<< orphan*/ ,struct xhci_stream_ctx*,int /*<<< orphan*/ ) ; 
 struct pci_dev* FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC3 (struct xhci_hcd*) ; 

__attribute__((used)) static void FUNC4(struct xhci_hcd *xhci,
		unsigned int num_stream_ctxs,
		struct xhci_stream_ctx *stream_ctx, dma_addr_t dma)
{
	struct pci_dev *pdev = FUNC2(FUNC3(xhci)->self.controller);

	if (num_stream_ctxs > MEDIUM_STREAM_ARRAY_SIZE)
		FUNC0(&pdev->dev,
				sizeof(struct xhci_stream_ctx)*num_stream_ctxs,
				stream_ctx, dma);
	else if (num_stream_ctxs <= SMALL_STREAM_ARRAY_SIZE)
		return FUNC1(xhci->small_streams_pool,
				stream_ctx, dma);
	else
		return FUNC1(xhci->medium_streams_pool,
				stream_ctx, dma);
}