
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct usb_function {TYPE_1__* config; } ;
struct usb_composite_dev {int gadget; } ;
struct net_device {int dummy; } ;
struct TYPE_14__ {int is_zlp_ok; int cdc_filter; void* out; void* in; TYPE_2__* in_ep; } ;
struct TYPE_12__ {int out; int in; int notify; } ;
struct TYPE_11__ {int out; int in; int notify; } ;
struct f_rndis {unsigned int ctrl_id; unsigned int data_id; TYPE_7__ port; int config; TYPE_4__ fs; TYPE_3__ hs; TYPE_5__* notify; void* notify_desc; } ;
struct TYPE_13__ {struct f_rndis* driver_data; } ;
struct TYPE_10__ {scalar_t__ driver_data; } ;
struct TYPE_9__ {struct usb_composite_dev* cdev; } ;


 int DBG (struct usb_composite_dev*,char*) ;
 int EINVAL ;
 scalar_t__ IS_ERR (struct net_device*) ;
 int PTR_ERR (struct net_device*) ;
 int VDBG (struct usb_composite_dev*,char*,unsigned int) ;
 void* ep_choose (int ,int ,int ) ;
 struct f_rndis* func_to_rndis (struct usb_function*) ;
 struct net_device* gether_connect (TYPE_7__*) ;
 int gether_disconnect (TYPE_7__*) ;
 int rndis_set_param_dev (int ,struct net_device*,int *) ;
 int usb_ep_disable (TYPE_5__*) ;
 int usb_ep_enable (TYPE_5__*,void*) ;

__attribute__((used)) static int rndis_set_alt(struct usb_function *f, unsigned intf, unsigned alt)
{
 struct f_rndis *rndis = func_to_rndis(f);
 struct usb_composite_dev *cdev = f->config->cdev;



 if (intf == rndis->ctrl_id) {
  if (rndis->notify->driver_data) {
   VDBG(cdev, "reset rndis control %d\n", intf);
   usb_ep_disable(rndis->notify);
  } else {
   VDBG(cdev, "init rndis ctrl %d\n", intf);
   rndis->notify_desc = ep_choose(cdev->gadget,
     rndis->hs.notify,
     rndis->fs.notify);
  }
  usb_ep_enable(rndis->notify, rndis->notify_desc);
  rndis->notify->driver_data = rndis;

 } else if (intf == rndis->data_id) {
  struct net_device *net;

  if (rndis->port.in_ep->driver_data) {
   DBG(cdev, "reset rndis\n");
   gether_disconnect(&rndis->port);
  }

  if (!rndis->port.in) {
   DBG(cdev, "init rndis\n");
   rndis->port.in = ep_choose(cdev->gadget,
     rndis->hs.in, rndis->fs.in);
   rndis->port.out = ep_choose(cdev->gadget,
     rndis->hs.out, rndis->fs.out);
  }


  rndis->port.is_zlp_ok = 0;
  rndis->port.cdc_filter = 0;

  DBG(cdev, "RNDIS RX/TX early activation ... \n");
  net = gether_connect(&rndis->port);
  if (IS_ERR(net))
   return PTR_ERR(net);

  rndis_set_param_dev(rndis->config, net,
    &rndis->port.cdc_filter);
 } else
  goto fail;

 return 0;
fail:
 return -EINVAL;
}
