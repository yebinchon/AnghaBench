
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_serial_port {int dev; } ;
struct tty_struct {int dummy; } ;
struct spcp8x5_private {int lock; int buf; } ;


 int dev_dbg (int *,char*,int) ;
 int put_ringbuf (int ,unsigned char const*,int) ;
 int spcp8x5_send (struct usb_serial_port*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct spcp8x5_private* usb_get_serial_port_data (struct usb_serial_port*) ;

__attribute__((used)) static int spcp8x5_write(struct tty_struct *tty, struct usb_serial_port *port,
    const unsigned char *buf, int count)
{
 struct spcp8x5_private *priv = usb_get_serial_port_data(port);
 unsigned long flags;

 dev_dbg(&port->dev, "%d bytes\n", count);

 if (!count)
  return count;

 spin_lock_irqsave(&priv->lock, flags);
 count = put_ringbuf(priv->buf, buf, count);
 spin_unlock_irqrestore(&priv->lock, flags);

 spcp8x5_send(port);

 return count;
}
