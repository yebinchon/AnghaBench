
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_serial_port {TYPE_1__* serial; } ;
struct mct_u232_private {int control_state; int lock; } ;
struct TYPE_2__ {int disc_mutex; int disconnected; } ;


 int TIOCM_DTR ;
 int TIOCM_RTS ;
 int mct_u232_set_modem_ctrl (TYPE_1__*,unsigned int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 struct mct_u232_private* usb_get_serial_port_data (struct usb_serial_port*) ;

__attribute__((used)) static void mct_u232_dtr_rts(struct usb_serial_port *port, int on)
{
 unsigned int control_state;
 struct mct_u232_private *priv = usb_get_serial_port_data(port);

 mutex_lock(&port->serial->disc_mutex);
 if (!port->serial->disconnected) {

  spin_lock_irq(&priv->lock);
  if (on)
   priv->control_state |= TIOCM_DTR | TIOCM_RTS;
  else
   priv->control_state &= ~(TIOCM_DTR | TIOCM_RTS);
  control_state = priv->control_state;
  spin_unlock_irq(&priv->lock);
  mct_u232_set_modem_ctrl(port->serial, control_state);
 }
 mutex_unlock(&port->serial->disc_mutex);
}
