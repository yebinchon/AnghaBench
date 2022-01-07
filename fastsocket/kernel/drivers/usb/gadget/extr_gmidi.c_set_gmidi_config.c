
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_request {int complete; } ;
struct usb_ep {int name; struct gmidi_device* driver_data; } ;
struct gmidi_device {struct usb_ep* out_ep; struct usb_ep* in_ep; } ;
typedef int gfp_t ;


 int DBG (struct gmidi_device*,char*,int ,int) ;
 int ENOMEM ;
 int ERROR (struct gmidi_device*,char*,int ,int) ;
 int GFP_ATOMIC ;
 struct usb_request* alloc_ep_req (struct usb_ep*,int ) ;
 int buflen ;
 int bulk_in_desc ;
 int bulk_out_desc ;
 int gmidi_complete ;
 unsigned int qlen ;
 int usb_ep_enable (struct usb_ep*,int *) ;
 int usb_ep_queue (struct usb_ep*,struct usb_request*,int ) ;

__attribute__((used)) static int set_gmidi_config(struct gmidi_device *dev, gfp_t gfp_flags)
{
 int err = 0;
 struct usb_request *req;
 struct usb_ep *ep;
 unsigned i;

 err = usb_ep_enable(dev->in_ep, &bulk_in_desc);
 if (err) {
  ERROR(dev, "can't start %s: %d\n", dev->in_ep->name, err);
  goto fail;
 }
 dev->in_ep->driver_data = dev;

 err = usb_ep_enable(dev->out_ep, &bulk_out_desc);
 if (err) {
  ERROR(dev, "can't start %s: %d\n", dev->out_ep->name, err);
  goto fail;
 }
 dev->out_ep->driver_data = dev;


 ep = dev->out_ep;
 for (i = 0; i < qlen && err == 0; i++) {
  req = alloc_ep_req(ep, buflen);
  if (req) {
   req->complete = gmidi_complete;
   err = usb_ep_queue(ep, req, GFP_ATOMIC);
   if (err) {
    DBG(dev, "%s queue req: %d\n", ep->name, err);
   }
  } else {
   err = -ENOMEM;
  }
 }
fail:

 return err;
}
