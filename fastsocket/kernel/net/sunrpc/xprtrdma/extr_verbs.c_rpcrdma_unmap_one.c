
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rpcrdma_mr_seg {int mr_dir; int mr_dmalen; int mr_dma; scalar_t__ mr_page; } ;
struct rpcrdma_ia {TYPE_1__* ri_id; } ;
struct TYPE_2__ {int device; } ;


 int ib_dma_unmap_page (int ,int ,int ,int ) ;
 int ib_dma_unmap_single (int ,int ,int ,int ) ;

__attribute__((used)) static void
rpcrdma_unmap_one(struct rpcrdma_ia *ia, struct rpcrdma_mr_seg *seg)
{
 if (seg->mr_page)
  ib_dma_unmap_page(ia->ri_id->device,
    seg->mr_dma, seg->mr_dmalen, seg->mr_dir);
 else
  ib_dma_unmap_single(ia->ri_id->device,
    seg->mr_dma, seg->mr_dmalen, seg->mr_dir);
}
