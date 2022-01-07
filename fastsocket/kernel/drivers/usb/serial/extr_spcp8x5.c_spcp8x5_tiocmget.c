
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_serial_port {int dummy; } ;
struct tty_struct {struct usb_serial_port* driver_data; } ;
struct spcp8x5_private {unsigned int line_control; unsigned int line_status; int lock; } ;
struct file {int dummy; } ;


 unsigned int MCR_DTR ;
 unsigned int MCR_RTS ;
 unsigned int MSR_STATUS_LINE_CTS ;
 unsigned int MSR_STATUS_LINE_DCD ;
 unsigned int MSR_STATUS_LINE_DSR ;
 unsigned int MSR_STATUS_LINE_RI ;
 unsigned int TIOCM_CD ;
 unsigned int TIOCM_CTS ;
 unsigned int TIOCM_DSR ;
 unsigned int TIOCM_DTR ;
 unsigned int TIOCM_RI ;
 unsigned int TIOCM_RTS ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct spcp8x5_private* usb_get_serial_port_data (struct usb_serial_port*) ;

__attribute__((used)) static int spcp8x5_tiocmget(struct tty_struct *tty, struct file *file)
{
 struct usb_serial_port *port = tty->driver_data;
 struct spcp8x5_private *priv = usb_get_serial_port_data(port);
 unsigned long flags;
 unsigned int mcr;
 unsigned int status;
 unsigned int result;

 spin_lock_irqsave(&priv->lock, flags);
 mcr = priv->line_control;
 status = priv->line_status;
 spin_unlock_irqrestore(&priv->lock, flags);

 result = ((mcr & MCR_DTR) ? TIOCM_DTR : 0)
    | ((mcr & MCR_RTS) ? TIOCM_RTS : 0)
    | ((status & MSR_STATUS_LINE_CTS) ? TIOCM_CTS : 0)
    | ((status & MSR_STATUS_LINE_DSR) ? TIOCM_DSR : 0)
    | ((status & MSR_STATUS_LINE_RI) ? TIOCM_RI : 0)
    | ((status & MSR_STATUS_LINE_DCD) ? TIOCM_CD : 0);

 return result;
}
