
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct at91_udc {int dummy; } ;
struct TYPE_4__ {int status; int (* complete ) (TYPE_1__*,TYPE_2__*) ;} ;
struct at91_request {TYPE_2__ req; int queue; } ;
struct TYPE_3__ {int name; } ;
struct at91_ep {unsigned int stopped; int int_mask; int queue; TYPE_1__ ep; struct at91_udc* udc; } ;


 int AT91_UDP_IDR ;
 int EINPROGRESS ;
 int ESHUTDOWN ;
 int VDBG (char*,int ,struct at91_request*,int) ;
 int at91_udp_write (struct at91_udc*,int ,int) ;
 int list_del_init (int *) ;
 scalar_t__ list_empty (int *) ;
 int stub1 (TYPE_1__*,TYPE_2__*) ;

__attribute__((used)) static void done(struct at91_ep *ep, struct at91_request *req, int status)
{
 unsigned stopped = ep->stopped;
 struct at91_udc *udc = ep->udc;

 list_del_init(&req->queue);
 if (req->req.status == -EINPROGRESS)
  req->req.status = status;
 else
  status = req->req.status;
 if (status && status != -ESHUTDOWN)
  VDBG("%s done %p, status %d\n", ep->ep.name, req, status);

 ep->stopped = 1;
 req->req.complete(&ep->ep, &req->req);
 ep->stopped = stopped;


 if (list_empty(&ep->queue) && ep->int_mask != (1 << 0))
  at91_udp_write(udc, AT91_UDP_IDR, ep->int_mask);
}
