
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_request {int dummy; } ;
struct usb_ep {int dummy; } ;
struct imx_request {struct usb_request req; scalar_t__ in_use; int queue; } ;
typedef int gfp_t ;


 int INIT_LIST_HEAD (int *) ;
 struct imx_request* kzalloc (int,int ) ;

__attribute__((used)) static struct usb_request *imx_ep_alloc_request
     (struct usb_ep *usb_ep, gfp_t gfp_flags)
{
 struct imx_request *req;

 if (!usb_ep)
  return ((void*)0);

 req = kzalloc(sizeof *req, gfp_flags);
 if (!req)
  return ((void*)0);

 INIT_LIST_HEAD(&req->queue);
 req->in_use = 0;

 return &req->req;
}
