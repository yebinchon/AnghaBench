
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_serial {int * port; int dev; } ;
struct ch341_private {int line_control; int baud_rate; int delta_msr_wait; int lock; } ;


 int CH341_BIT_DTR ;
 int CH341_BIT_RTS ;
 int DEFAULT_BAUD_RATE ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int ch341_configure (int ,struct ch341_private*) ;
 int dbg (char*) ;
 int init_waitqueue_head (int *) ;
 int kfree (struct ch341_private*) ;
 struct ch341_private* kzalloc (int,int ) ;
 int spin_lock_init (int *) ;
 int usb_set_serial_port_data (int ,struct ch341_private*) ;

__attribute__((used)) static int ch341_attach(struct usb_serial *serial)
{
 struct ch341_private *priv;
 int r;

 dbg("ch341_attach()");


 priv = kzalloc(sizeof(struct ch341_private), GFP_KERNEL);
 if (!priv)
  return -ENOMEM;

 spin_lock_init(&priv->lock);
 init_waitqueue_head(&priv->delta_msr_wait);
 priv->baud_rate = DEFAULT_BAUD_RATE;
 priv->line_control = CH341_BIT_RTS | CH341_BIT_DTR;

 r = ch341_configure(serial->dev, priv);
 if (r < 0)
  goto error;

 usb_set_serial_port_data(serial->port[0], priv);
 return 0;

error: kfree(priv);
 return r;
}
