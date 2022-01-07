
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_function {TYPE_1__* config; } ;
struct usb_composite_dev {int dummy; } ;
struct f_obex {int port; int port_num; } ;
struct TYPE_2__ {struct usb_composite_dev* cdev; } ;


 int DBG (struct usb_composite_dev*,char*,int ) ;
 struct f_obex* func_to_obex (struct usb_function*) ;
 int gserial_disconnect (int *) ;

__attribute__((used)) static void obex_disable(struct usb_function *f)
{
 struct f_obex *obex = func_to_obex(f);
 struct usb_composite_dev *cdev = f->config->cdev;

 DBG(cdev, "obex ttyGS%d disable\n", obex->port_num);
 gserial_disconnect(&obex->port);
}
