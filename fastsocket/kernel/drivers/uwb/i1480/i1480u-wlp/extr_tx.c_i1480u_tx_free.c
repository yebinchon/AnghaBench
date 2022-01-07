
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i1480u_tx {int urb; scalar_t__ skb; struct i1480u_tx* buf; } ;


 int dev_kfree_skb_irq (scalar_t__) ;
 int kfree (struct i1480u_tx*) ;
 int usb_free_urb (int ) ;

__attribute__((used)) static
void i1480u_tx_free(struct i1480u_tx *wtx)
{
 kfree(wtx->buf);
 if (wtx->skb)
  dev_kfree_skb_irq(wtx->skb);
 usb_free_urb(wtx->urb);
 kfree(wtx);
}
