
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_request {unsigned int length; int buf; } ;
struct usb_ep {int dummy; } ;


 int GFP_ATOMIC ;
 int kmalloc (unsigned int,int ) ;
 struct usb_request* usb_ep_alloc_request (struct usb_ep*,int ) ;
 int usb_ep_free_request (struct usb_ep*,struct usb_request*) ;

__attribute__((used)) static struct usb_request *alloc_ep_req(struct usb_ep *ep, unsigned length)
{
 struct usb_request *req;

 req = usb_ep_alloc_request(ep, GFP_ATOMIC);
 if (req) {
  req->length = length;
  req->buf = kmalloc(length, GFP_ATOMIC);
  if (!req->buf) {
   usb_ep_free_request(ep, req);
   req = ((void*)0);
  }
 }
 return req;
}
