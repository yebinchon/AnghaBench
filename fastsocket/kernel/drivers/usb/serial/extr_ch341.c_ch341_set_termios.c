
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_serial_port {TYPE_1__* serial; } ;
struct tty_struct {int dummy; } ;
struct ktermios {int dummy; } ;
struct ch341_private {unsigned int baud_rate; int line_control; int lock; } ;
struct TYPE_2__ {int dev; } ;


 int CH341_BIT_DTR ;
 int CH341_BIT_RTS ;
 int ch341_set_baudrate (int ,struct ch341_private*) ;
 int ch341_set_handshake (int ,int) ;
 int dbg (char*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 unsigned int tty_get_baud_rate (struct tty_struct*) ;
 struct ch341_private* usb_get_serial_port_data (struct usb_serial_port*) ;

__attribute__((used)) static void ch341_set_termios(struct tty_struct *tty,
  struct usb_serial_port *port, struct ktermios *old_termios)
{
 struct ch341_private *priv = usb_get_serial_port_data(port);
 unsigned baud_rate;
 unsigned long flags;

 dbg("ch341_set_termios()");

 baud_rate = tty_get_baud_rate(tty);

 priv->baud_rate = baud_rate;

 if (baud_rate) {
  spin_lock_irqsave(&priv->lock, flags);
  priv->line_control |= (CH341_BIT_DTR | CH341_BIT_RTS);
  spin_unlock_irqrestore(&priv->lock, flags);
  ch341_set_baudrate(port->serial->dev, priv);
 } else {
  spin_lock_irqsave(&priv->lock, flags);
  priv->line_control &= ~(CH341_BIT_DTR | CH341_BIT_RTS);
  spin_unlock_irqrestore(&priv->lock, flags);
 }

 ch341_set_handshake(port->serial->dev, priv->line_control);






}
