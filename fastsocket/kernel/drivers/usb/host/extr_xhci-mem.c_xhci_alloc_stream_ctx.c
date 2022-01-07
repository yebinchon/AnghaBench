
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct xhci_stream_ctx {int dummy; } ;
struct xhci_hcd {int medium_streams_pool; int small_streams_pool; } ;
struct pci_dev {int dev; } ;
typedef int gfp_t ;
typedef int dma_addr_t ;
struct TYPE_3__ {int controller; } ;
struct TYPE_4__ {TYPE_1__ self; } ;


 unsigned int MEDIUM_STREAM_ARRAY_SIZE ;
 unsigned int SMALL_STREAM_ARRAY_SIZE ;
 struct xhci_stream_ctx* dma_alloc_coherent (int *,int,int *,int ) ;
 struct xhci_stream_ctx* dma_pool_alloc (int ,int ,int *) ;
 struct pci_dev* to_pci_dev (int ) ;
 TYPE_2__* xhci_to_hcd (struct xhci_hcd*) ;

__attribute__((used)) static struct xhci_stream_ctx *xhci_alloc_stream_ctx(struct xhci_hcd *xhci,
  unsigned int num_stream_ctxs, dma_addr_t *dma,
  gfp_t mem_flags)
{
 struct pci_dev *pdev = to_pci_dev(xhci_to_hcd(xhci)->self.controller);

 if (num_stream_ctxs > MEDIUM_STREAM_ARRAY_SIZE)
  return dma_alloc_coherent(&pdev->dev,
    sizeof(struct xhci_stream_ctx)*num_stream_ctxs,
    dma, mem_flags);
 else if (num_stream_ctxs <= SMALL_STREAM_ARRAY_SIZE)
  return dma_pool_alloc(xhci->small_streams_pool,
    mem_flags, dma);
 else
  return dma_pool_alloc(xhci->medium_streams_pool,
    mem_flags, dma);
}
