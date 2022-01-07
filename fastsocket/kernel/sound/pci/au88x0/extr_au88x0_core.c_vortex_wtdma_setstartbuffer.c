
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int mmio; TYPE_2__* dma_wt; } ;
typedef TYPE_1__ vortex_t ;
struct TYPE_5__ {int period_real; int period_virt; } ;
typedef TYPE_2__ stream_t ;


 scalar_t__ VORTEX_WTDMA_START ;
 int hwwrite (int ,scalar_t__,int) ;

__attribute__((used)) static void vortex_wtdma_setstartbuffer(vortex_t * vortex, int wtdma, int sb)
{
 stream_t *dma = &vortex->dma_wt[wtdma];

 hwwrite(vortex->mmio, VORTEX_WTDMA_START + (wtdma << 2),
  sb << ((0xf - (wtdma & 0xf)) * 2));
 dma->period_real = dma->period_virt = sb;
}
