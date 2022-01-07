
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_serial_port {int dummy; } ;
struct TYPE_2__ {unsigned int pin_state; } ;
struct oti6858_private {int lock; TYPE_1__ status; int intr_wait; } ;


 int ERESTARTSYS ;
 unsigned int PIN_CTS ;
 unsigned int PIN_DCD ;
 unsigned int PIN_DSR ;
 unsigned int PIN_MASK ;
 unsigned int PIN_RI ;
 unsigned int TIOCM_CD ;
 unsigned int TIOCM_CTS ;
 unsigned int TIOCM_DSR ;
 unsigned int TIOCM_RNG ;
 int current ;
 scalar_t__ signal_pending (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct oti6858_private* usb_get_serial_port_data (struct usb_serial_port*) ;
 int wait_event_interruptible (int ,int) ;

__attribute__((used)) static int wait_modem_info(struct usb_serial_port *port, unsigned int arg)
{
 struct oti6858_private *priv = usb_get_serial_port_data(port);
 unsigned long flags;
 unsigned int prev, status;
 unsigned int changed;

 spin_lock_irqsave(&priv->lock, flags);
 prev = priv->status.pin_state;
 spin_unlock_irqrestore(&priv->lock, flags);

 while (1) {
  wait_event_interruptible(priv->intr_wait,
     priv->status.pin_state != prev);
  if (signal_pending(current))
   return -ERESTARTSYS;

  spin_lock_irqsave(&priv->lock, flags);
  status = priv->status.pin_state & PIN_MASK;
  spin_unlock_irqrestore(&priv->lock, flags);

  changed = prev ^ status;

  if (((arg & TIOCM_RNG) && (changed & PIN_RI)) ||
      ((arg & TIOCM_DSR) && (changed & PIN_DSR)) ||
      ((arg & TIOCM_CD) && (changed & PIN_DCD)) ||
      ((arg & TIOCM_CTS) && (changed & PIN_CTS)))
   return 0;
  prev = status;
 }


 return 0;
}
