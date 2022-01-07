
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_serial_port {int dummy; } ;
struct tty_struct {struct usb_serial_port* driver_data; } ;
struct keyspan_port_private {int rts_state; int dtr_state; } ;
struct file {int dummy; } ;


 unsigned int TIOCM_DTR ;
 unsigned int TIOCM_RTS ;
 int keyspan_send_setup (struct usb_serial_port*,int ) ;
 struct keyspan_port_private* usb_get_serial_port_data (struct usb_serial_port*) ;

__attribute__((used)) static int keyspan_tiocmset(struct tty_struct *tty, struct file *file,
       unsigned int set, unsigned int clear)
{
 struct usb_serial_port *port = tty->driver_data;
 struct keyspan_port_private *p_priv = usb_get_serial_port_data(port);

 if (set & TIOCM_RTS)
  p_priv->rts_state = 1;
 if (set & TIOCM_DTR)
  p_priv->dtr_state = 1;
 if (clear & TIOCM_RTS)
  p_priv->rts_state = 0;
 if (clear & TIOCM_DTR)
  p_priv->dtr_state = 0;
 keyspan_send_setup(port, 0);
 return 0;
}
