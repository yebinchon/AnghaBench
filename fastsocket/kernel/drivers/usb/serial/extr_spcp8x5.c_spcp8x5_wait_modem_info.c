
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_serial_port {int dummy; } ;
struct spcp8x5_private {unsigned int line_status; int lock; int delta_msr_wait; } ;


 int ERESTARTSYS ;
 unsigned int MSR_STATUS_LINE_CTS ;
 unsigned int MSR_STATUS_LINE_DCD ;
 unsigned int MSR_STATUS_LINE_DSR ;
 unsigned int MSR_STATUS_LINE_RI ;
 unsigned int TIOCM_CD ;
 unsigned int TIOCM_CTS ;
 unsigned int TIOCM_DSR ;
 unsigned int TIOCM_RNG ;
 int current ;
 int interruptible_sleep_on (int *) ;
 scalar_t__ signal_pending (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct spcp8x5_private* usb_get_serial_port_data (struct usb_serial_port*) ;

__attribute__((used)) static int spcp8x5_wait_modem_info(struct usb_serial_port *port,
       unsigned int arg)
{
 struct spcp8x5_private *priv = usb_get_serial_port_data(port);
 unsigned long flags;
 unsigned int prevstatus;
 unsigned int status;
 unsigned int changed;

 spin_lock_irqsave(&priv->lock, flags);
 prevstatus = priv->line_status;
 spin_unlock_irqrestore(&priv->lock, flags);

 while (1) {

  interruptible_sleep_on(&priv->delta_msr_wait);


  if (signal_pending(current))
   return -ERESTARTSYS;

  spin_lock_irqsave(&priv->lock, flags);
  status = priv->line_status;
  spin_unlock_irqrestore(&priv->lock, flags);

  changed = prevstatus^status;

  if (((arg & TIOCM_RNG) && (changed & MSR_STATUS_LINE_RI)) ||
      ((arg & TIOCM_DSR) && (changed & MSR_STATUS_LINE_DSR)) ||
      ((arg & TIOCM_CD) && (changed & MSR_STATUS_LINE_DCD)) ||
      ((arg & TIOCM_CTS) && (changed & MSR_STATUS_LINE_CTS)))
   return 0;

  prevstatus = status;
 }

 return 0;
}
