
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rpcrdma_mr_seg {int mr_dir; int mr_dmalen; int mr_offset; int mr_dma; scalar_t__ mr_page; int mr_len; } ;
struct rpcrdma_ia {TYPE_1__* ri_id; } ;
struct TYPE_2__ {int device; } ;


 int DMA_FROM_DEVICE ;
 int DMA_TO_DEVICE ;
 int ib_dma_map_page (int ,scalar_t__,int ,int ,int ) ;
 int ib_dma_map_single (int ,int ,int ,int ) ;
 int offset_in_page (int ) ;

__attribute__((used)) static void
rpcrdma_map_one(struct rpcrdma_ia *ia, struct rpcrdma_mr_seg *seg, int writing)
{
 seg->mr_dir = writing ? DMA_FROM_DEVICE : DMA_TO_DEVICE;
 seg->mr_dmalen = seg->mr_len;
 if (seg->mr_page)
  seg->mr_dma = ib_dma_map_page(ia->ri_id->device,
    seg->mr_page, offset_in_page(seg->mr_offset),
    seg->mr_dmalen, seg->mr_dir);
 else
  seg->mr_dma = ib_dma_map_single(ia->ri_id->device,
    seg->mr_offset,
    seg->mr_dmalen, seg->mr_dir);
}
