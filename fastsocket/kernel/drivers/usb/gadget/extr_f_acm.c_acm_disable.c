
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct usb_function {TYPE_1__* config; } ;
struct usb_composite_dev {int dummy; } ;
struct f_acm {TYPE_2__* notify; int port; int port_num; } ;
struct TYPE_4__ {int * driver_data; } ;
struct TYPE_3__ {struct usb_composite_dev* cdev; } ;


 int DBG (struct usb_composite_dev*,char*,int ) ;
 struct f_acm* func_to_acm (struct usb_function*) ;
 int gserial_disconnect (int *) ;
 int usb_ep_disable (TYPE_2__*) ;

__attribute__((used)) static void acm_disable(struct usb_function *f)
{
 struct f_acm *acm = func_to_acm(f);
 struct usb_composite_dev *cdev = f->config->cdev;

 DBG(cdev, "acm ttyGS%d deactivated\n", acm->port_num);
 gserial_disconnect(&acm->port);
 usb_ep_disable(acm->notify);
 acm->notify->driver_data = ((void*)0);
}
