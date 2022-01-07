
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_serial_port {int dummy; } ;
struct keyspan_port_private {int rts_state; int dtr_state; } ;


 int keyspan_send_setup (struct usb_serial_port*,int ) ;
 struct keyspan_port_private* usb_get_serial_port_data (struct usb_serial_port*) ;

__attribute__((used)) static void keyspan_dtr_rts(struct usb_serial_port *port, int on)
{
 struct keyspan_port_private *p_priv = usb_get_serial_port_data(port);

 p_priv->rts_state = on;
 p_priv->dtr_state = on;
 keyspan_send_setup(port, 0);
}
