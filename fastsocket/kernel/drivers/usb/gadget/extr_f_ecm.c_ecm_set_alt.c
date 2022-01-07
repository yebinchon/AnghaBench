
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
struct f_ecm {unsigned int ctrl_id; unsigned int data_id; TYPE_7__ port; TYPE_4__ fs; TYPE_3__ hs; TYPE_5__* notify; void* notify_desc; } ;
struct TYPE_13__ {struct f_ecm* driver_data; } ;
struct TYPE_10__ {scalar_t__ driver_data; } ;
struct TYPE_9__ {struct usb_composite_dev* cdev; } ;


 int DBG (struct usb_composite_dev*,char*) ;
 int DEFAULT_FILTER ;
 int EINVAL ;
 scalar_t__ IS_ERR (struct net_device*) ;
 int PTR_ERR (struct net_device*) ;
 int VDBG (struct usb_composite_dev*,char*,unsigned int) ;
 int ecm_notify (struct f_ecm*) ;
 void* ep_choose (int ,int ,int ) ;
 struct f_ecm* func_to_ecm (struct usb_function*) ;
 scalar_t__ gadget_is_musbhdrc (int ) ;
 scalar_t__ gadget_is_sa1100 (int ) ;
 struct net_device* gether_connect (TYPE_7__*) ;
 int gether_disconnect (TYPE_7__*) ;
 int usb_ep_disable (TYPE_5__*) ;
 int usb_ep_enable (TYPE_5__*,void*) ;

__attribute__((used)) static int ecm_set_alt(struct usb_function *f, unsigned intf, unsigned alt)
{
 struct f_ecm *ecm = func_to_ecm(f);
 struct usb_composite_dev *cdev = f->config->cdev;


 if (intf == ecm->ctrl_id) {
  if (alt != 0)
   goto fail;

  if (ecm->notify->driver_data) {
   VDBG(cdev, "reset ecm control %d\n", intf);
   usb_ep_disable(ecm->notify);
  } else {
   VDBG(cdev, "init ecm ctrl %d\n", intf);
   ecm->notify_desc = ep_choose(cdev->gadget,
     ecm->hs.notify,
     ecm->fs.notify);
  }
  usb_ep_enable(ecm->notify, ecm->notify_desc);
  ecm->notify->driver_data = ecm;


 } else if (intf == ecm->data_id) {
  if (alt > 1)
   goto fail;

  if (ecm->port.in_ep->driver_data) {
   DBG(cdev, "reset ecm\n");
   gether_disconnect(&ecm->port);
  }

  if (!ecm->port.in) {
   DBG(cdev, "init ecm\n");
   ecm->port.in = ep_choose(cdev->gadget,
     ecm->hs.in, ecm->fs.in);
   ecm->port.out = ep_choose(cdev->gadget,
     ecm->hs.out, ecm->fs.out);
  }




  if (alt == 1) {
   struct net_device *net;





   ecm->port.is_zlp_ok = !(
       gadget_is_sa1100(cdev->gadget)
    || gadget_is_musbhdrc(cdev->gadget)
    );
   ecm->port.cdc_filter = DEFAULT_FILTER;
   DBG(cdev, "activate ecm\n");
   net = gether_connect(&ecm->port);
   if (IS_ERR(net))
    return PTR_ERR(net);
  }







  ecm_notify(ecm);
 } else
  goto fail;

 return 0;
fail:
 return -EINVAL;
}
