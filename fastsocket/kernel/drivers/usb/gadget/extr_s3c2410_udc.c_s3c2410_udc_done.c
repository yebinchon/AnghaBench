
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int status; int (* complete ) (int *,TYPE_1__*) ;} ;
struct s3c2410_request {TYPE_1__ req; int queue; } ;
struct s3c2410_ep {unsigned int halted; int ep; } ;


 int EINPROGRESS ;
 scalar_t__ likely (int) ;
 int list_del_init (int *) ;
 int stub1 (int *,TYPE_1__*) ;

__attribute__((used)) static void s3c2410_udc_done(struct s3c2410_ep *ep,
  struct s3c2410_request *req, int status)
{
 unsigned halted = ep->halted;

 list_del_init(&req->queue);

 if (likely (req->req.status == -EINPROGRESS))
  req->req.status = status;
 else
  status = req->req.status;

 ep->halted = 1;
 req->req.complete(&ep->ep, &req->req);
 ep->halted = halted;
}
