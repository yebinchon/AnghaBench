
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sep_device {int shared_bus; int shared_addr; TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 int dma_free_coherent (int *,int,int ,int ) ;

__attribute__((used)) static void sep_unmap_and_free_shared_area(struct sep_device *sep, int size)
{
 dma_free_coherent(&sep->pdev->dev, size,
    sep->shared_addr, sep->shared_bus);
}
