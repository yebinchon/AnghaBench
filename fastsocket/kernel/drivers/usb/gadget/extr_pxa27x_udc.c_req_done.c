
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct pxa_ep {int dummy; } ;
struct TYPE_5__ {int status; int (* complete ) (int *,TYPE_2__*) ;int length; int actual; } ;
struct pxa27x_request {TYPE_2__ req; TYPE_1__* udc_usb_ep; } ;
struct TYPE_4__ {int usb_ep; } ;


 int EINPROGRESS ;
 int ESHUTDOWN ;
 int ep_dbg (struct pxa_ep*,char*,TYPE_2__*,int,int ,int ) ;
 int ep_del_request (struct pxa_ep*,struct pxa27x_request*) ;
 scalar_t__ likely (int) ;
 int stub1 (int *,TYPE_2__*) ;

__attribute__((used)) static void req_done(struct pxa_ep *ep, struct pxa27x_request *req, int status)
{
 ep_del_request(ep, req);
 if (likely(req->req.status == -EINPROGRESS))
  req->req.status = status;
 else
  status = req->req.status;

 if (status && status != -ESHUTDOWN)
  ep_dbg(ep, "complete req %p stat %d len %u/%u\n",
   &req->req, status,
   req->req.actual, req->req.length);

 req->req.complete(&req->udc_usb_ep->usb_ep, &req->req);
}
