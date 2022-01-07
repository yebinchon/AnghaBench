
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct usb_serial_port {TYPE_1__* serial; } ;
struct tty_struct {struct usb_serial_port* driver_data; } ;
struct pl2303_private {int lock; int line_control; } ;
struct file {int dummy; } ;
struct TYPE_2__ {int dev; int interface; } ;


 int CONTROL_DTR ;
 int CONTROL_RTS ;
 int ENODEV ;
 unsigned int TIOCM_DTR ;
 unsigned int TIOCM_RTS ;
 int set_control_lines (int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int usb_get_intfdata (int ) ;
 struct pl2303_private* usb_get_serial_port_data (struct usb_serial_port*) ;

__attribute__((used)) static int pl2303_tiocmset(struct tty_struct *tty, struct file *file,
      unsigned int set, unsigned int clear)
{
 struct usb_serial_port *port = tty->driver_data;
 struct pl2303_private *priv = usb_get_serial_port_data(port);
 unsigned long flags;
 u8 control;

 if (!usb_get_intfdata(port->serial->interface))
  return -ENODEV;

 spin_lock_irqsave(&priv->lock, flags);
 if (set & TIOCM_RTS)
  priv->line_control |= CONTROL_RTS;
 if (set & TIOCM_DTR)
  priv->line_control |= CONTROL_DTR;
 if (clear & TIOCM_RTS)
  priv->line_control &= ~CONTROL_RTS;
 if (clear & TIOCM_DTR)
  priv->line_control &= ~CONTROL_DTR;
 control = priv->line_control;
 spin_unlock_irqrestore(&priv->lock, flags);

 return set_control_lines(port->serial->dev, control);
}
