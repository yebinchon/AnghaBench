
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fsl_udc {int ep0_state; struct fsl_ep* eps; int ep0_dir; struct fsl_req* status_req; } ;
struct TYPE_2__ {int * complete; scalar_t__ actual; int status; scalar_t__ length; } ;
struct fsl_req {int queue; scalar_t__ dtd_count; TYPE_1__ req; struct fsl_ep* ep; } ;
struct fsl_ep {int queue; } ;


 int EINPROGRESS ;
 int ENOMEM ;
 int EP_DIR_IN ;
 int USB_DIR_IN ;
 int USB_DIR_OUT ;
 int WAIT_FOR_OUT_STATUS ;
 int fsl_queue_td (struct fsl_ep*,struct fsl_req*) ;
 scalar_t__ fsl_req_to_dtd (struct fsl_req*) ;
 int list_add_tail (int *,int *) ;

__attribute__((used)) static int ep0_prime_status(struct fsl_udc *udc, int direction)
{
 struct fsl_req *req = udc->status_req;
 struct fsl_ep *ep;

 if (direction == EP_DIR_IN)
  udc->ep0_dir = USB_DIR_IN;
 else
  udc->ep0_dir = USB_DIR_OUT;

 ep = &udc->eps[0];
 udc->ep0_state = WAIT_FOR_OUT_STATUS;

 req->ep = ep;
 req->req.length = 0;
 req->req.status = -EINPROGRESS;
 req->req.actual = 0;
 req->req.complete = ((void*)0);
 req->dtd_count = 0;

 if (fsl_req_to_dtd(req) == 0)
  fsl_queue_td(ep, req);
 else
  return -ENOMEM;

 list_add_tail(&req->queue, &ep->queue);

 return 0;
}
