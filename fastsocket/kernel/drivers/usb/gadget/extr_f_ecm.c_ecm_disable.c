
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct usb_function {TYPE_1__* config; } ;
struct usb_composite_dev {int dummy; } ;
struct TYPE_8__ {TYPE_2__* in_ep; } ;
struct f_ecm {int * notify_desc; TYPE_3__* notify; TYPE_4__ port; } ;
struct TYPE_7__ {int * driver_data; } ;
struct TYPE_6__ {scalar_t__ driver_data; } ;
struct TYPE_5__ {struct usb_composite_dev* cdev; } ;


 int DBG (struct usb_composite_dev*,char*) ;
 struct f_ecm* func_to_ecm (struct usb_function*) ;
 int gether_disconnect (TYPE_4__*) ;
 int usb_ep_disable (TYPE_3__*) ;

__attribute__((used)) static void ecm_disable(struct usb_function *f)
{
 struct f_ecm *ecm = func_to_ecm(f);
 struct usb_composite_dev *cdev = f->config->cdev;

 DBG(cdev, "ecm deactivated\n");

 if (ecm->port.in_ep->driver_data)
  gether_disconnect(&ecm->port);

 if (ecm->notify->driver_data) {
  usb_ep_disable(ecm->notify);
  ecm->notify->driver_data = ((void*)0);
  ecm->notify_desc = ((void*)0);
 }
}
