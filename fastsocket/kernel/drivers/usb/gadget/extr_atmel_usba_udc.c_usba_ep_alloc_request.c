
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_request {int dma; } ;
struct usba_request {struct usb_request req; int queue; } ;
struct usb_ep {int dummy; } ;
typedef int gfp_t ;


 int DBG (int ,char*,struct usb_ep*,int ) ;
 int DBG_GADGET ;
 int DMA_ADDR_INVALID ;
 int INIT_LIST_HEAD (int *) ;
 struct usba_request* kzalloc (int,int ) ;

__attribute__((used)) static struct usb_request *
usba_ep_alloc_request(struct usb_ep *_ep, gfp_t gfp_flags)
{
 struct usba_request *req;

 DBG(DBG_GADGET, "ep_alloc_request: %p, 0x%x\n", _ep, gfp_flags);

 req = kzalloc(sizeof(*req), gfp_flags);
 if (!req)
  return ((void*)0);

 INIT_LIST_HEAD(&req->queue);
 req->req.dma = DMA_ADDR_INVALID;

 return &req->req;
}
