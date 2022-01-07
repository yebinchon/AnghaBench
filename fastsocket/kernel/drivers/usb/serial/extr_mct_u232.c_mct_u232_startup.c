
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_serial_port {TYPE_1__* read_urb; TYPE_1__* interrupt_in_urb; int write_wait; } ;
struct usb_serial {struct usb_serial_port** port; } ;
struct mct_u232_private {int lock; } ;
struct TYPE_2__ {struct usb_serial_port* context; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int init_waitqueue_head (int *) ;
 struct mct_u232_private* kzalloc (int,int ) ;
 int spin_lock_init (int *) ;
 int usb_free_urb (TYPE_1__*) ;
 int usb_set_serial_port_data (struct usb_serial_port*,struct mct_u232_private*) ;

__attribute__((used)) static int mct_u232_startup(struct usb_serial *serial)
{
 struct mct_u232_private *priv;
 struct usb_serial_port *port, *rport;

 priv = kzalloc(sizeof(struct mct_u232_private), GFP_KERNEL);
 if (!priv)
  return -ENOMEM;
 spin_lock_init(&priv->lock);
 usb_set_serial_port_data(serial->port[0], priv);

 init_waitqueue_head(&serial->port[0]->write_wait);


 port = serial->port[0];
 rport = serial->port[1];

 usb_free_urb(port->read_urb);
 port->read_urb = rport->interrupt_in_urb;
 rport->interrupt_in_urb = ((void*)0);
 port->read_urb->context = port;

 return 0;
}
