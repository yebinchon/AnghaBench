
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_request {int dma; } ;
struct usb_ep {int dummy; } ;
struct s3c_hsotg_req {struct usb_request req; int queue; } ;
typedef int gfp_t ;


 int DMA_ADDR_INVALID ;
 int INIT_LIST_HEAD (int *) ;
 struct s3c_hsotg_req* kzalloc (int,int ) ;

struct usb_request *s3c_hsotg_ep_alloc_request(struct usb_ep *ep, gfp_t flags)
{
 struct s3c_hsotg_req *req;

 req = kzalloc(sizeof(struct s3c_hsotg_req), flags);
 if (!req)
  return ((void*)0);

 INIT_LIST_HEAD(&req->queue);

 req->req.dma = DMA_ADDR_INVALID;
 return &req->req;
}
