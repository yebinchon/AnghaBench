
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_serial_port {int dummy; } ;
struct usb_serial {int num_ports; struct usb_serial_port** port; } ;
struct oti6858_private {int * buf; int delayed_write_work; int delayed_setup_work; struct usb_serial_port* port; int intr_wait; int lock; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_DELAYED_WORK (int *,int ) ;
 int PL2303_BUF_SIZE ;
 int init_waitqueue_head (int *) ;
 int kfree (struct oti6858_private*) ;
 struct oti6858_private* kzalloc (int,int ) ;
 int * oti6858_buf_alloc (int ) ;
 int oti6858_buf_free (int *) ;
 int send_data ;
 int setup_line ;
 int spin_lock_init (int *) ;
 struct oti6858_private* usb_get_serial_port_data (struct usb_serial_port*) ;
 int usb_set_serial_port_data (struct usb_serial_port*,struct oti6858_private*) ;

__attribute__((used)) static int oti6858_startup(struct usb_serial *serial)
{
 struct usb_serial_port *port = serial->port[0];
 struct oti6858_private *priv;
 int i;

 for (i = 0; i < serial->num_ports; ++i) {
  priv = kzalloc(sizeof(struct oti6858_private), GFP_KERNEL);
  if (!priv)
   break;
  priv->buf = oti6858_buf_alloc(PL2303_BUF_SIZE);
  if (priv->buf == ((void*)0)) {
   kfree(priv);
   break;
  }

  spin_lock_init(&priv->lock);
  init_waitqueue_head(&priv->intr_wait);


  priv->port = port;
  INIT_DELAYED_WORK(&priv->delayed_setup_work, setup_line);
  INIT_DELAYED_WORK(&priv->delayed_write_work, send_data);

  usb_set_serial_port_data(serial->port[i], priv);
 }
 if (i == serial->num_ports)
  return 0;

 for (--i; i >= 0; --i) {
  priv = usb_get_serial_port_data(serial->port[i]);
  oti6858_buf_free(priv->buf);
  kfree(priv);
  usb_set_serial_port_data(serial->port[i], ((void*)0));
 }
 return -ENOMEM;
}
