
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int mmio; TYPE_2__* dma_adb; } ;
typedef TYPE_1__ vortex_t ;
struct TYPE_5__ {int period_virt; int period_bytes; } ;
typedef TYPE_2__ stream_t ;


 scalar_t__ VORTEX_ADBDMA_STAT ;
 int hwread (int ,scalar_t__) ;

__attribute__((used)) static int inline vortex_adbdma_getlinearpos(vortex_t * vortex, int adbdma)
{
 stream_t *dma = &vortex->dma_adb[adbdma];
 int temp;

 temp = hwread(vortex->mmio, VORTEX_ADBDMA_STAT + (adbdma << 2));
 temp = (dma->period_virt * dma->period_bytes) + (temp & (dma->period_bytes - 1));
 return temp;
}
