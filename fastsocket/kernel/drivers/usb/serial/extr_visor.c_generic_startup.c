
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct visor_private {int lock; } ;
struct usb_serial_port {int dummy; } ;
struct usb_serial {int num_ports; struct usb_serial_port** port; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int kfree (struct visor_private*) ;
 struct visor_private* kzalloc (int,int ) ;
 int spin_lock_init (int *) ;
 struct visor_private* usb_get_serial_port_data (struct usb_serial_port*) ;
 int usb_set_serial_port_data (struct usb_serial_port*,struct visor_private*) ;

__attribute__((used)) static int generic_startup(struct usb_serial *serial)
{
 struct usb_serial_port **ports = serial->port;
 struct visor_private *priv;
 int i;

 for (i = 0; i < serial->num_ports; ++i) {
  priv = kzalloc(sizeof(*priv), GFP_KERNEL);
  if (!priv) {
   while (i-- != 0) {
    priv = usb_get_serial_port_data(ports[i]);
    usb_set_serial_port_data(ports[i], ((void*)0));
    kfree(priv);
   }
   return -ENOMEM;
  }
  spin_lock_init(&priv->lock);
  usb_set_serial_port_data(ports[i], priv);
 }
 return 0;
}
