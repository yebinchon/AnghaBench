
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_serial_port {int dummy; } ;
struct cypress_private {int line_control; int cmd_ctrl; int lock; } ;


 int CONTROL_DTR ;
 int CONTROL_RTS ;
 int cypress_write (int *,struct usb_serial_port*,int *,int ) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 struct cypress_private* usb_get_serial_port_data (struct usb_serial_port*) ;

__attribute__((used)) static void cypress_dtr_rts(struct usb_serial_port *port, int on)
{
 struct cypress_private *priv = usb_get_serial_port_data(port);

 priv = usb_get_serial_port_data(port);
 spin_lock_irq(&priv->lock);
 if (on == 0)
  priv->line_control = 0;
 else
  priv->line_control = CONTROL_DTR | CONTROL_RTS;
 priv->cmd_ctrl = 1;
 spin_unlock_irq(&priv->lock);
 cypress_write(((void*)0), port, ((void*)0), 0);
}
