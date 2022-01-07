
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_serial {int num_ports; int * port; } ;
struct spcp8x5_private {int buf; } ;


 int free_ringbuf (int ) ;
 int kfree (struct spcp8x5_private*) ;
 struct spcp8x5_private* usb_get_serial_port_data (int ) ;

__attribute__((used)) static void spcp8x5_release(struct usb_serial *serial)
{
 int i;
 struct spcp8x5_private *priv;

 for (i = 0; i < serial->num_ports; i++) {
  priv = usb_get_serial_port_data(serial->port[i]);
  if (priv) {
   free_ringbuf(priv->buf);
   kfree(priv);
  }
 }
}
