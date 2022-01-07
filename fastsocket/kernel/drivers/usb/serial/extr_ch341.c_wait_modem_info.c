
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct usb_serial_port {int dummy; } ;
struct ch341_private {int line_status; int multi_status_change; int lock; int delta_msr_wait; } ;


 int CH341_BIT_CTS ;
 int CH341_BIT_DCD ;
 int CH341_BIT_DSR ;
 int CH341_BIT_RI ;
 int ERESTARTSYS ;
 unsigned int TIOCM_CD ;
 unsigned int TIOCM_CTS ;
 unsigned int TIOCM_DSR ;
 unsigned int TIOCM_RNG ;
 int current ;
 int interruptible_sleep_on (int *) ;
 scalar_t__ signal_pending (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct ch341_private* usb_get_serial_port_data (struct usb_serial_port*) ;

__attribute__((used)) static int wait_modem_info(struct usb_serial_port *port, unsigned int arg)
{
 struct ch341_private *priv = usb_get_serial_port_data(port);
 unsigned long flags;
 u8 prevstatus;
 u8 status;
 u8 changed;
 u8 multi_change = 0;

 spin_lock_irqsave(&priv->lock, flags);
 prevstatus = priv->line_status;
 priv->multi_status_change = 0;
 spin_unlock_irqrestore(&priv->lock, flags);

 while (!multi_change) {
  interruptible_sleep_on(&priv->delta_msr_wait);

  if (signal_pending(current))
   return -ERESTARTSYS;

  spin_lock_irqsave(&priv->lock, flags);
  status = priv->line_status;
  multi_change = priv->multi_status_change;
  spin_unlock_irqrestore(&priv->lock, flags);

  changed = prevstatus ^ status;

  if (((arg & TIOCM_RNG) && (changed & CH341_BIT_RI)) ||
      ((arg & TIOCM_DSR) && (changed & CH341_BIT_DSR)) ||
      ((arg & TIOCM_CD) && (changed & CH341_BIT_DCD)) ||
      ((arg & TIOCM_CTS) && (changed & CH341_BIT_CTS))) {
   return 0;
  }
  prevstatus = status;
 }

 return 0;
}
