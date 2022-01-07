
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct usb_function {TYPE_1__* config; } ;
struct usb_composite_dev {int dummy; } ;
struct TYPE_6__ {TYPE_2__* in_ep; } ;
struct f_eem {TYPE_3__ port; } ;
struct TYPE_5__ {scalar_t__ driver_data; } ;
struct TYPE_4__ {struct usb_composite_dev* cdev; } ;


 int DBG (struct usb_composite_dev*,char*) ;
 struct f_eem* func_to_eem (struct usb_function*) ;
 int gether_disconnect (TYPE_3__*) ;

__attribute__((used)) static void eem_disable(struct usb_function *f)
{
 struct f_eem *eem = func_to_eem(f);
 struct usb_composite_dev *cdev = f->config->cdev;

 DBG(cdev, "eem deactivated\n");

 if (eem->port.in_ep->driver_data)
  gether_disconnect(&eem->port);
}
