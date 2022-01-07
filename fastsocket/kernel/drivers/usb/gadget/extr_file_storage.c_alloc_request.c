
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_request {int dummy; } ;
struct usb_ep {int name; } ;
struct fsg_dev {int dummy; } ;


 int ENOMEM ;
 int ERROR (struct fsg_dev*,char*,int ) ;
 int GFP_ATOMIC ;
 struct usb_request* usb_ep_alloc_request (struct usb_ep*,int ) ;

__attribute__((used)) static int alloc_request(struct fsg_dev *fsg, struct usb_ep *ep,
  struct usb_request **preq)
{
 *preq = usb_ep_alloc_request(ep, GFP_ATOMIC);
 if (*preq)
  return 0;
 ERROR(fsg, "can't allocate request for %s\n", ep->name);
 return -ENOMEM;
}
