
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_function {int dummy; } ;
struct phonet_port {int lock; } ;
struct f_phonet {int dev; } ;


 int __pn_reset (struct usb_function*) ;
 struct f_phonet* func_to_pn (struct usb_function*) ;
 struct phonet_port* netdev_priv (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void pn_disconnect(struct usb_function *f)
{
 struct f_phonet *fp = func_to_pn(f);
 struct phonet_port *port = netdev_priv(fp->dev);
 unsigned long flags;


 spin_lock_irqsave(&port->lock, flags);
 __pn_reset(f);
 spin_unlock_irqrestore(&port->lock, flags);
}
