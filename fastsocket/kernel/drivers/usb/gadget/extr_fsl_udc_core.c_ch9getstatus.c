
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct fsl_udc {int remote_wakeup; int ep0_state; struct fsl_req* status_req; int ep0_dir; struct fsl_ep* eps; } ;
struct TYPE_2__ {int length; int * complete; scalar_t__ actual; int status; scalar_t__ buf; } ;
struct fsl_req {int queue; scalar_t__ dtd_count; TYPE_1__ req; struct fsl_ep* ep; } ;
struct fsl_ep {int queue; int desc; } ;


 int DATA_STATE_XMIT ;
 int EINPROGRESS ;
 int USB_DEVICE_REMOTE_WAKEUP ;
 int USB_DEVICE_SELF_POWERED ;
 int USB_DIR_IN ;
 int USB_ENDPOINT_HALT ;
 int USB_RECIP_DEVICE ;
 int USB_RECIP_ENDPOINT ;
 int USB_RECIP_INTERFACE ;
 int USB_RECIP_MASK ;
 int cpu_to_le16 (int) ;
 int dr_ep_get_stall (int ,int ) ;
 int ep0stall (struct fsl_udc*) ;
 int ep_index (struct fsl_ep*) ;
 int ep_is_in (struct fsl_ep*) ;
 int fsl_queue_td (struct fsl_ep*,struct fsl_req*) ;
 scalar_t__ fsl_req_to_dtd (struct fsl_req*) ;
 struct fsl_ep* get_ep_by_pipe (struct fsl_udc*,int ) ;
 int get_pipe_by_windex (int) ;
 int list_add_tail (int *,int *) ;

__attribute__((used)) static void ch9getstatus(struct fsl_udc *udc, u8 request_type, u16 value,
  u16 index, u16 length)
{
 u16 tmp = 0;
 struct fsl_req *req;
 struct fsl_ep *ep;

 ep = &udc->eps[0];

 if ((request_type & USB_RECIP_MASK) == USB_RECIP_DEVICE) {

  tmp = 1 << USB_DEVICE_SELF_POWERED;
  tmp |= udc->remote_wakeup << USB_DEVICE_REMOTE_WAKEUP;
 } else if ((request_type & USB_RECIP_MASK) == USB_RECIP_INTERFACE) {


  tmp = 0;
 } else if ((request_type & USB_RECIP_MASK) == USB_RECIP_ENDPOINT) {

  struct fsl_ep *target_ep;

  target_ep = get_ep_by_pipe(udc, get_pipe_by_windex(index));


  if (!target_ep->desc)
   goto stall;
  tmp = dr_ep_get_stall(ep_index(target_ep), ep_is_in(target_ep))
    << USB_ENDPOINT_HALT;
 }

 udc->ep0_dir = USB_DIR_IN;

 req = udc->status_req;

 *((u16 *) req->req.buf) = cpu_to_le16(tmp);
 req->ep = ep;
 req->req.length = 2;
 req->req.status = -EINPROGRESS;
 req->req.actual = 0;
 req->req.complete = ((void*)0);
 req->dtd_count = 0;


 if ((fsl_req_to_dtd(req) == 0))
  fsl_queue_td(ep, req);
 else
  goto stall;

 list_add_tail(&req->queue, &ep->queue);
 udc->ep0_state = DATA_STATE_XMIT;
 return;
stall:
 ep0stall(udc);
}
