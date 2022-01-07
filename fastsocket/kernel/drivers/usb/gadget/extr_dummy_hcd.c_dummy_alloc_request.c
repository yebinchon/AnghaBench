
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_request {int dummy; } ;
struct usb_ep {int dummy; } ;
struct dummy_request {struct usb_request req; int queue; } ;
struct dummy_ep {int dummy; } ;
typedef int gfp_t ;


 int INIT_LIST_HEAD (int *) ;
 struct dummy_request* kzalloc (int,int ) ;
 struct dummy_ep* usb_ep_to_dummy_ep (struct usb_ep*) ;

__attribute__((used)) static struct usb_request *
dummy_alloc_request (struct usb_ep *_ep, gfp_t mem_flags)
{
 struct dummy_ep *ep;
 struct dummy_request *req;

 if (!_ep)
  return ((void*)0);
 ep = usb_ep_to_dummy_ep (_ep);

 req = kzalloc(sizeof(*req), mem_flags);
 if (!req)
  return ((void*)0);
 INIT_LIST_HEAD (&req->queue);
 return &req->req;
}
