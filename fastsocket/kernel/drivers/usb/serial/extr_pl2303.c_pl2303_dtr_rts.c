
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct usb_serial_port {TYPE_1__* serial; } ;
struct pl2303_private {int line_control; int lock; } ;
struct TYPE_2__ {int dev; } ;


 int CONTROL_DTR ;
 int CONTROL_RTS ;
 int set_control_lines (int ,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct pl2303_private* usb_get_serial_port_data (struct usb_serial_port*) ;

__attribute__((used)) static void pl2303_dtr_rts(struct usb_serial_port *port, int on)
{
 struct pl2303_private *priv = usb_get_serial_port_data(port);
 unsigned long flags;
 u8 control;

 spin_lock_irqsave(&priv->lock, flags);

 if (on)
  priv->line_control |= (CONTROL_DTR | CONTROL_RTS);
 else
  priv->line_control &= ~(CONTROL_DTR | CONTROL_RTS);
 control = priv->line_control;
 spin_unlock_irqrestore(&priv->lock, flags);
 set_control_lines(port->serial->dev, control);
}
