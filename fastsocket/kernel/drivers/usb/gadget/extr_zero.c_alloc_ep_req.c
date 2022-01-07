
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_request {int buf; int length; } ;
struct usb_ep {int dummy; } ;


 int GFP_ATOMIC ;
 int buflen ;
 int kmalloc (int ,int ) ;
 struct usb_request* usb_ep_alloc_request (struct usb_ep*,int ) ;
 int usb_ep_free_request (struct usb_ep*,struct usb_request*) ;

struct usb_request *alloc_ep_req(struct usb_ep *ep)
{
 struct usb_request *req;

 req = usb_ep_alloc_request(ep, GFP_ATOMIC);
 if (req) {
  req->length = buflen;
  req->buf = kmalloc(buflen, GFP_ATOMIC);
  if (!req->buf) {
   usb_ep_free_request(ep, req);
   req = ((void*)0);
  }
 }
 return req;
}
