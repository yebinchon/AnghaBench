
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_serial_port {int lock; scalar_t__ write_urb_busy; } ;
struct tty_struct {struct usb_serial_port* driver_data; } ;
struct keyspan_pda_private {scalar_t__ tx_throttled; } ;


 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct keyspan_pda_private* usb_get_serial_port_data (struct usb_serial_port*) ;

__attribute__((used)) static int keyspan_pda_chars_in_buffer(struct tty_struct *tty)
{
 struct usb_serial_port *port = tty->driver_data;
 struct keyspan_pda_private *priv;
 unsigned long flags;
 int ret = 0;

 priv = usb_get_serial_port_data(port);




 spin_lock_irqsave(&port->lock, flags);
 if (port->write_urb_busy || priv->tx_throttled)
  ret = 256;
 spin_unlock_irqrestore(&port->lock, flags);
 return ret;
}
