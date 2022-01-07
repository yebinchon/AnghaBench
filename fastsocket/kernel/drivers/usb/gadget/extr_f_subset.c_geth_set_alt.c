
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
struct net_device {int dummy; } ;
struct TYPE_11__ {void* out; void* in; TYPE_2__* in_ep; } ;
struct TYPE_10__ {int out; int in; } ;
struct TYPE_9__ {int out; int in; } ;
struct f_gether {TYPE_5__ port; TYPE_4__ fs; TYPE_3__ hs; } ;
struct TYPE_8__ {scalar_t__ driver_data; } ;
struct TYPE_7__ {struct usb_composite_dev* cdev; } ;


 int DBG (struct usb_composite_dev*,char*) ;
 scalar_t__ IS_ERR (struct net_device*) ;
 int PTR_ERR (struct net_device*) ;
 void* ep_choose (int ,int ,int ) ;
 struct f_gether* func_to_geth (struct usb_function*) ;
 struct net_device* gether_connect (TYPE_5__*) ;
 int gether_disconnect (TYPE_5__*) ;

__attribute__((used)) static int geth_set_alt(struct usb_function *f, unsigned intf, unsigned alt)
{
 struct f_gether *geth = func_to_geth(f);
 struct usb_composite_dev *cdev = f->config->cdev;
 struct net_device *net;



 if (geth->port.in_ep->driver_data) {
  DBG(cdev, "reset cdc subset\n");
  gether_disconnect(&geth->port);
 }

 DBG(cdev, "init + activate cdc subset\n");
 geth->port.in = ep_choose(cdev->gadget,
   geth->hs.in, geth->fs.in);
 geth->port.out = ep_choose(cdev->gadget,
   geth->hs.out, geth->fs.out);

 net = gether_connect(&geth->port);
 return IS_ERR(net) ? PTR_ERR(net) : 0;
}
