
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_debug_entry {unsigned long size; int direction; scalar_t__ sg_call_ents; int dev_addr; struct device* dev; int type; } ;
struct device {int dummy; } ;
typedef int dma_addr_t ;


 int check_sync (struct device*,struct dma_debug_entry*,int) ;
 int dma_debug_single ;
 int global_disable ;
 scalar_t__ unlikely (int ) ;

void debug_dma_sync_single_range_for_device(struct device *dev,
         dma_addr_t dma_handle,
         unsigned long offset,
         size_t size, int direction)
{
 struct dma_debug_entry ref;

 if (unlikely(global_disable))
  return;

 ref.type = dma_debug_single;
 ref.dev = dev;
 ref.dev_addr = dma_handle;
 ref.size = offset + size;
 ref.direction = direction;
 ref.sg_call_ents = 0;

 check_sync(dev, &ref, 0);
}
