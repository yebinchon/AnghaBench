
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct musb_hw_ep {int regs; } ;


 int MUSB_TXCSR ;
 int MUSB_TXCSR_DMAENAB ;
 int MUSB_TXCSR_DMAMODE ;
 int MUSB_TXCSR_H_WZC_BITS ;
 scalar_t__ is_cppi_enabled () ;
 int musb_readw (int ,int ) ;
 int musb_writew (int ,int ,int) ;

__attribute__((used)) static inline void musb_h_tx_dma_start(struct musb_hw_ep *ep)
{
 u16 txcsr;


 txcsr = musb_readw(ep->regs, MUSB_TXCSR);
 txcsr |= MUSB_TXCSR_DMAENAB | MUSB_TXCSR_H_WZC_BITS;
 if (is_cppi_enabled())
  txcsr |= MUSB_TXCSR_DMAMODE;
 musb_writew(ep->regs, MUSB_TXCSR, txcsr);
}
