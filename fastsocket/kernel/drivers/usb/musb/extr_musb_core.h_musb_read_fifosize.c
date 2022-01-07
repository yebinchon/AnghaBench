
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct musb_hw_ep {int max_packet_sz_tx; int max_packet_sz_rx; int is_shared_fifo; } ;
struct musb {int epmask; int nr_endpoints; void* mregs; } ;


 int ENODEV ;
 int MUSB_EP_OFFSET (int,int ) ;
 int MUSB_FIFOSIZE ;
 int musb_readb (void*,int ) ;

__attribute__((used)) static inline int musb_read_fifosize(struct musb *musb,
  struct musb_hw_ep *hw_ep, u8 epnum)
{
 void *mbase = musb->mregs;
 u8 reg = 0;


 reg = musb_readb(mbase, MUSB_EP_OFFSET(epnum, MUSB_FIFOSIZE));

 if (!reg)
  return -ENODEV;

 musb->nr_endpoints++;
 musb->epmask |= (1 << epnum);

 hw_ep->max_packet_sz_tx = 1 << (reg & 0x0f);


 if ((reg & 0xf0) == 0xf0) {
  hw_ep->max_packet_sz_rx = hw_ep->max_packet_sz_tx;
  hw_ep->is_shared_fifo = 1;
  return 0;
 } else {
  hw_ep->max_packet_sz_rx = 1 << ((reg & 0xf0) >> 4);
  hw_ep->is_shared_fifo = 0;
 }

 return 0;
}
