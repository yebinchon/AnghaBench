
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_serial_port {int dummy; } ;
struct tty_struct {struct usb_serial_port* driver_data; } ;
struct spcp8x5_private {int lock; int buf; } ;


 int ringbuf_avail_data (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct spcp8x5_private* usb_get_serial_port_data (struct usb_serial_port*) ;

__attribute__((used)) static int spcp8x5_chars_in_buffer(struct tty_struct *tty)
{
 struct usb_serial_port *port = tty->driver_data;
 struct spcp8x5_private *priv = usb_get_serial_port_data(port);
 int chars = 0;
 unsigned long flags;

 spin_lock_irqsave(&priv->lock, flags);
 chars = ringbuf_avail_data(priv->buf);
 spin_unlock_irqrestore(&priv->lock, flags);

 return chars;
}
