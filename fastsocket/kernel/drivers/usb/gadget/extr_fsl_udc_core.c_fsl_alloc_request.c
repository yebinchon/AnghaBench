
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_request {int dma; } ;
struct usb_ep {int dummy; } ;
struct fsl_req {struct usb_request req; int queue; } ;
typedef int gfp_t ;


 int DMA_ADDR_INVALID ;
 int INIT_LIST_HEAD (int *) ;
 struct fsl_req* kzalloc (int,int ) ;

__attribute__((used)) static struct usb_request *
fsl_alloc_request(struct usb_ep *_ep, gfp_t gfp_flags)
{
 struct fsl_req *req = ((void*)0);

 req = kzalloc(sizeof *req, gfp_flags);
 if (!req)
  return ((void*)0);

 req->req.dma = DMA_ADDR_INVALID;
 INIT_LIST_HEAD(&req->queue);

 return &req->req;
}
