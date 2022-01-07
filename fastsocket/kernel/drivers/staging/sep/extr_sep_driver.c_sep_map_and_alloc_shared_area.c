
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sep_device {scalar_t__ shared_bus; int shared_addr; TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int dma_alloc_coherent (int *,unsigned long,scalar_t__*,int ) ;
 int edbg (char*,...) ;

__attribute__((used)) static int sep_map_and_alloc_shared_area(struct sep_device *sep,
       unsigned long size)
{

 sep->shared_addr = dma_alloc_coherent(&sep->pdev->dev, size,
     &sep->shared_bus, GFP_KERNEL);

 if (!sep->shared_addr) {
  edbg("sep_driver :shared memory dma_alloc_coherent failed\n");
  return -ENOMEM;
 }

 edbg("sep: shared_addr %ld bytes @%p (bus %08llx)\n",
  size, sep->shared_addr, (unsigned long long)sep->shared_bus);
 return 0;
}
