
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
struct TYPE_11__ {int is_zlp_ok; int cdc_filter; void* out; void* in; TYPE_2__* in_ep; } ;
struct TYPE_10__ {int out; int in; } ;
struct TYPE_9__ {int out; int in; } ;
struct f_eem {unsigned int ctrl_id; TYPE_5__ port; TYPE_4__ fs; TYPE_3__ hs; } ;
struct TYPE_8__ {scalar_t__ driver_data; } ;
struct TYPE_7__ {struct usb_composite_dev* cdev; } ;


 int DBG (struct usb_composite_dev*,char*) ;
 int DEFAULT_FILTER ;
 int EINVAL ;
 scalar_t__ IS_ERR (struct net_device*) ;
 int PTR_ERR (struct net_device*) ;
 void* ep_choose (int ,int ,int ) ;
 struct f_eem* func_to_eem (struct usb_function*) ;
 struct net_device* gether_connect (TYPE_5__*) ;
 int gether_disconnect (TYPE_5__*) ;

__attribute__((used)) static int eem_set_alt(struct usb_function *f, unsigned intf, unsigned alt)
{
 struct f_eem *eem = func_to_eem(f);
 struct usb_composite_dev *cdev = f->config->cdev;
 struct net_device *net;


 if (alt != 0)
  goto fail;

 if (intf == eem->ctrl_id) {

  if (eem->port.in_ep->driver_data) {
   DBG(cdev, "reset eem\n");
   gether_disconnect(&eem->port);
  }

  if (!eem->port.in) {
   DBG(cdev, "init eem\n");
   eem->port.in = ep_choose(cdev->gadget,
     eem->hs.in, eem->fs.in);
   eem->port.out = ep_choose(cdev->gadget,
     eem->hs.out, eem->fs.out);
  }




  eem->port.is_zlp_ok = 1;
  eem->port.cdc_filter = DEFAULT_FILTER;
  DBG(cdev, "activate eem\n");
  net = gether_connect(&eem->port);
  if (IS_ERR(net))
   return PTR_ERR(net);
 } else
  goto fail;

 return 0;
fail:
 return -EINVAL;
}
