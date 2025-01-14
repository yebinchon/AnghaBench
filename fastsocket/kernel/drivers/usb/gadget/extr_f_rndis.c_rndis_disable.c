
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct usb_function {TYPE_1__* config; } ;
struct usb_composite_dev {int dummy; } ;
struct f_rndis {TYPE_2__* notify; int port; int config; } ;
struct TYPE_4__ {int * driver_data; } ;
struct TYPE_3__ {struct usb_composite_dev* cdev; } ;


 int DBG (struct usb_composite_dev*,char*) ;
 struct f_rndis* func_to_rndis (struct usb_function*) ;
 int gether_disconnect (int *) ;
 int rndis_uninit (int ) ;
 int usb_ep_disable (TYPE_2__*) ;

__attribute__((used)) static void rndis_disable(struct usb_function *f)
{
 struct f_rndis *rndis = func_to_rndis(f);
 struct usb_composite_dev *cdev = f->config->cdev;

 if (!rndis->notify->driver_data)
  return;

 DBG(cdev, "rndis deactivated\n");

 rndis_uninit(rndis->config);
 gether_disconnect(&rndis->port);

 usb_ep_disable(rndis->notify);
 rndis->notify->driver_data = ((void*)0);
}
