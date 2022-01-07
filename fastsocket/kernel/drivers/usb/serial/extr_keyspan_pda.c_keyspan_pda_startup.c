
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_serial {TYPE_1__** port; } ;
struct keyspan_pda_private {TYPE_1__* port; struct usb_serial* serial; int unthrottle_work; int wakeup_work; } ;
struct TYPE_2__ {int write_wait; } ;


 int GFP_KERNEL ;
 int INIT_WORK (int *,int ) ;
 int init_waitqueue_head (int *) ;
 int keyspan_pda_request_unthrottle ;
 int keyspan_pda_wakeup_write ;
 struct keyspan_pda_private* kmalloc (int,int ) ;
 int usb_set_serial_port_data (TYPE_1__*,struct keyspan_pda_private*) ;

__attribute__((used)) static int keyspan_pda_startup(struct usb_serial *serial)
{

 struct keyspan_pda_private *priv;




 priv = kmalloc(sizeof(struct keyspan_pda_private), GFP_KERNEL);
 if (!priv)
  return 1;
 usb_set_serial_port_data(serial->port[0], priv);
 init_waitqueue_head(&serial->port[0]->write_wait);
 INIT_WORK(&priv->wakeup_work, keyspan_pda_wakeup_write);
 INIT_WORK(&priv->unthrottle_work, keyspan_pda_request_unthrottle);
 priv->serial = serial;
 priv->port = serial->port[0];
 return 0;
}
