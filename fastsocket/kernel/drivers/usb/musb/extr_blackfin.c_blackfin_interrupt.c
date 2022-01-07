
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct musb {int lock; void* int_rx; int mregs; void* int_tx; scalar_t__ int_usb; } ;
typedef scalar_t__ irqreturn_t ;


 int DBG (int,char*) ;
 scalar_t__ IRQ_HANDLED ;
 scalar_t__ IRQ_NONE ;
 int MUSB_INTRRX ;
 int MUSB_INTRTX ;
 int MUSB_INTRUSB ;
 scalar_t__ musb_interrupt (struct musb*) ;
 scalar_t__ musb_readb (int ,int ) ;
 void* musb_readw (int ,int ) ;
 int musb_writeb (int ,int ,scalar_t__) ;
 int musb_writew (int ,int ,void*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static irqreturn_t blackfin_interrupt(int irq, void *__hci)
{
 unsigned long flags;
 irqreturn_t retval = IRQ_NONE;
 struct musb *musb = __hci;

 spin_lock_irqsave(&musb->lock, flags);

 musb->int_usb = musb_readb(musb->mregs, MUSB_INTRUSB);
 musb->int_tx = musb_readw(musb->mregs, MUSB_INTRTX);
 musb->int_rx = musb_readw(musb->mregs, MUSB_INTRRX);

 if (musb->int_usb || musb->int_tx || musb->int_rx) {
  musb_writeb(musb->mregs, MUSB_INTRUSB, musb->int_usb);
  musb_writew(musb->mregs, MUSB_INTRTX, musb->int_tx);
  musb_writew(musb->mregs, MUSB_INTRRX, musb->int_rx);
  retval = musb_interrupt(musb);
 }

 spin_unlock_irqrestore(&musb->lock, flags);




 if (retval != IRQ_HANDLED)
  DBG(5, "spurious?\n");

 return IRQ_HANDLED;
}
