
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct usb_serial_port {TYPE_1__* serial; } ;
struct spcp8x5_private {int line_control; int type; int lock; } ;
struct TYPE_2__ {int dev; } ;


 int MCR_CONTROL_LINE_DTR ;
 int MCR_CONTROL_LINE_RTS ;
 int spcp8x5_set_ctrlLine (int ,int,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct spcp8x5_private* usb_get_serial_port_data (struct usb_serial_port*) ;

__attribute__((used)) static void spcp8x5_dtr_rts(struct usb_serial_port *port, int on)
{
 struct spcp8x5_private *priv = usb_get_serial_port_data(port);
 unsigned long flags;
 u8 control;

 spin_lock_irqsave(&priv->lock, flags);
 if (on)
  priv->line_control = MCR_CONTROL_LINE_DTR
      | MCR_CONTROL_LINE_RTS;
 else
  priv->line_control &= ~ (MCR_CONTROL_LINE_DTR
      | MCR_CONTROL_LINE_RTS);
 control = priv->line_control;
 spin_unlock_irqrestore(&priv->lock, flags);
 spcp8x5_set_ctrlLine(port->serial->dev, control , priv->type);
}
