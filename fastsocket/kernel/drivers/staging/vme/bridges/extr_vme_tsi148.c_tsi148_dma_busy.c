
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {scalar_t__ base; } ;


 scalar_t__* TSI148_LCSR_DMA ;
 int TSI148_LCSR_DSTA_BSY ;
 scalar_t__ TSI148_LCSR_OFFSET_DSTA ;
 int ioread32be (scalar_t__) ;
 TYPE_1__* tsi148_bridge ;

__attribute__((used)) static int tsi148_dma_busy(int channel)
{
 u32 tmp;

 tmp = ioread32be(tsi148_bridge->base + TSI148_LCSR_DMA[channel] +
  TSI148_LCSR_OFFSET_DSTA);

 if (tmp & TSI148_LCSR_DSTA_BSY)
  return 0;
 else
  return 1;

}
