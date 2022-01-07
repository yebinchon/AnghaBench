
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_serial_port {int dummy; } ;
struct tty_struct {struct usb_serial_port* driver_data; } ;
struct iuu_private {int tiostatus; int lock; } ;
struct file {int dummy; } ;


 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct iuu_private* usb_get_serial_port_data (struct usb_serial_port*) ;

__attribute__((used)) static int iuu_tiocmget(struct tty_struct *tty, struct file *file)
{
 struct usb_serial_port *port = tty->driver_data;
 struct iuu_private *priv = usb_get_serial_port_data(port);
 unsigned long flags;
 int rc;

 spin_lock_irqsave(&priv->lock, flags);
 rc = priv->tiostatus;
 spin_unlock_irqrestore(&priv->lock, flags);

 return rc;
}
