
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct usb_function {TYPE_1__* config; } ;
struct usb_composite_dev {int gadget; } ;
struct TYPE_11__ {void* out_desc; void* in_desc; TYPE_2__* in; } ;
struct TYPE_10__ {int out; int in; } ;
struct TYPE_9__ {int out; int in; } ;
struct f_gser {int port_num; TYPE_5__ port; TYPE_4__ fs; TYPE_3__ hs; } ;
struct TYPE_8__ {scalar_t__ driver_data; } ;
struct TYPE_7__ {struct usb_composite_dev* cdev; } ;


 int DBG (struct usb_composite_dev*,char*,int ) ;
 void* ep_choose (int ,int ,int ) ;
 struct f_gser* func_to_gser (struct usb_function*) ;
 int gserial_connect (TYPE_5__*,int ) ;
 int gserial_disconnect (TYPE_5__*) ;

__attribute__((used)) static int gser_set_alt(struct usb_function *f, unsigned intf, unsigned alt)
{
 struct f_gser *gser = func_to_gser(f);
 struct usb_composite_dev *cdev = f->config->cdev;



 if (gser->port.in->driver_data) {
  DBG(cdev, "reset generic ttyGS%d\n", gser->port_num);
  gserial_disconnect(&gser->port);
 } else {
  DBG(cdev, "activate generic ttyGS%d\n", gser->port_num);
  gser->port.in_desc = ep_choose(cdev->gadget,
    gser->hs.in, gser->fs.in);
  gser->port.out_desc = ep_choose(cdev->gadget,
    gser->hs.out, gser->fs.out);
 }
 gserial_connect(&gser->port, gser->port_num);
 return 0;
}
