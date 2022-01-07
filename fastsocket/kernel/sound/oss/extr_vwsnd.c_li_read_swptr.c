
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int ctlval; TYPE_1__* desc; } ;
typedef TYPE_2__ dma_chan_t ;
struct TYPE_4__ {unsigned long swptrmask; } ;


 int CHUNKS_TO_BYTES (int ) ;
 int UNSHIFT_FIELD (int ,unsigned long const) ;

__attribute__((used)) static __inline__ int li_read_swptr(dma_chan_t *chan)
{
 const unsigned long mask = chan->desc->swptrmask;

 return CHUNKS_TO_BYTES(UNSHIFT_FIELD(chan->ctlval, mask));
}
