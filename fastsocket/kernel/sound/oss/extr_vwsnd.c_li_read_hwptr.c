
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* desc; int lith; } ;
typedef TYPE_2__ dma_chan_t ;
struct TYPE_4__ {int hwptrreg; } ;


 int CHUNKS_TO_BYTES (int ) ;
 int li_readb (int ,int ) ;

__attribute__((used)) static __inline__ int li_read_hwptr(dma_chan_t *chan)
{
 return CHUNKS_TO_BYTES(li_readb(chan->lith, chan->desc->hwptrreg));
}
