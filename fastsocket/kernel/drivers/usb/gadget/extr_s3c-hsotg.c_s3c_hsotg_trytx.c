
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ actual; scalar_t__ length; } ;
struct s3c_hsotg_req {TYPE_1__ req; } ;
struct s3c_hsotg_ep {int index; int dir_in; struct s3c_hsotg_req* req; } ;
struct s3c_hsotg {int dev; } ;


 int dev_dbg (int ,char*,int ) ;
 int s3c_hsotg_write_fifo (struct s3c_hsotg*,struct s3c_hsotg_ep*,struct s3c_hsotg_req*) ;

__attribute__((used)) static int s3c_hsotg_trytx(struct s3c_hsotg *hsotg,
      struct s3c_hsotg_ep *hs_ep)
{
 struct s3c_hsotg_req *hs_req = hs_ep->req;

 if (!hs_ep->dir_in || !hs_req)
  return 0;

 if (hs_req->req.actual < hs_req->req.length) {
  dev_dbg(hsotg->dev, "trying to write more for ep%d\n",
   hs_ep->index);
  return s3c_hsotg_write_fifo(hsotg, hs_ep, hs_req);
 }

 return 0;
}
