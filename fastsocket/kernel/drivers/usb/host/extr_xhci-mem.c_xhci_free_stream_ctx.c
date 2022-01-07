
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct xhci_stream_ctx {int dummy; } ;
struct xhci_hcd {int medium_streams_pool; int small_streams_pool; } ;
struct pci_dev {int dev; } ;
typedef int dma_addr_t ;
struct TYPE_3__ {int controller; } ;
struct TYPE_4__ {TYPE_1__ self; } ;


 unsigned int MEDIUM_STREAM_ARRAY_SIZE ;
 unsigned int SMALL_STREAM_ARRAY_SIZE ;
 int dma_free_coherent (int *,int,struct xhci_stream_ctx*,int ) ;
 void dma_pool_free (int ,struct xhci_stream_ctx*,int ) ;
 struct pci_dev* to_pci_dev (int ) ;
 TYPE_2__* xhci_to_hcd (struct xhci_hcd*) ;

__attribute__((used)) static void xhci_free_stream_ctx(struct xhci_hcd *xhci,
  unsigned int num_stream_ctxs,
  struct xhci_stream_ctx *stream_ctx, dma_addr_t dma)
{
 struct pci_dev *pdev = to_pci_dev(xhci_to_hcd(xhci)->self.controller);

 if (num_stream_ctxs > MEDIUM_STREAM_ARRAY_SIZE)
  dma_free_coherent(&pdev->dev,
    sizeof(struct xhci_stream_ctx)*num_stream_ctxs,
    stream_ctx, dma);
 else if (num_stream_ctxs <= SMALL_STREAM_ARRAY_SIZE)
  return dma_pool_free(xhci->small_streams_pool,
    stream_ctx, dma);
 else
  return dma_pool_free(xhci->medium_streams_pool,
    stream_ctx, dma);
}
