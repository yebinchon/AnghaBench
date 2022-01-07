
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct musb {int mregs; } ;


 int MUSB_DEVCTL ;
 int MUSB_DEVCTL_HM ;
 int is_cppi_enabled () ;
 scalar_t__ is_host_capable () ;
 scalar_t__ is_peripheral_capable () ;
 int musb_g_ep0_irq (struct musb*) ;
 int musb_g_rx (struct musb*,int) ;
 int musb_g_tx (struct musb*,int) ;
 int musb_h_ep0_irq (struct musb*) ;
 int musb_host_rx (struct musb*,int) ;
 int musb_host_tx (struct musb*,int) ;
 int musb_readb (int ,int ) ;

void musb_dma_completion(struct musb *musb, u8 epnum, u8 transmit)
{
 u8 devctl = musb_readb(musb->mregs, MUSB_DEVCTL);



 if (!epnum) {

  if (!is_cppi_enabled()) {

   if (devctl & MUSB_DEVCTL_HM)
    musb_h_ep0_irq(musb);
   else
    musb_g_ep0_irq(musb);
  }

 } else {

  if (transmit) {
   if (devctl & MUSB_DEVCTL_HM) {
    if (is_host_capable())
     musb_host_tx(musb, epnum);
   } else {
    if (is_peripheral_capable())
     musb_g_tx(musb, epnum);
   }
  } else {

   if (devctl & MUSB_DEVCTL_HM) {
    if (is_host_capable())
     musb_host_rx(musb, epnum);
   } else {
    if (is_peripheral_capable())
     musb_g_rx(musb, epnum);
   }
  }
 }
}
