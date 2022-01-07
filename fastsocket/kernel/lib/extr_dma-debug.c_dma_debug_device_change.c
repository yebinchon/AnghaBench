
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;
struct device {int dummy; } ;



 int device_dma_allocations (struct device*) ;
 int err_printk (struct device*,int *,char*,int) ;
 scalar_t__ global_disable ;

__attribute__((used)) static int dma_debug_device_change(struct notifier_block *nb, unsigned long action, void *data)
{
 struct device *dev = data;
 int count;

 if (global_disable)
  return 0;

 switch (action) {
 case 128:
  count = device_dma_allocations(dev);
  if (count == 0)
   break;
  err_printk(dev, ((void*)0), "DMA-API: device driver has pending "
    "DMA allocations while released from device "
    "[count=%d]\n", count);
  break;
 default:
  break;
 }

 return 0;
}
