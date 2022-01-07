
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct musb {TYPE_1__* endpoints; } ;
struct TYPE_2__ {int is_shared_fifo; void* max_packet_sz_rx; void* max_packet_sz_tx; } ;


 void* MUSB_EP0_FIFOSIZE ;

__attribute__((used)) static inline void musb_configure_ep0(struct musb *musb)
{
 musb->endpoints[0].max_packet_sz_tx = MUSB_EP0_FIFOSIZE;
 musb->endpoints[0].max_packet_sz_rx = MUSB_EP0_FIFOSIZE;
 musb->endpoints[0].is_shared_fifo = 1;
}
