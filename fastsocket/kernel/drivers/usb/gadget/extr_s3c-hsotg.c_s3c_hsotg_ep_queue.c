
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_request {int status; scalar_t__ actual; int short_not_ok; int zero; int no_interrupt; int buf; int length; } ;
struct usb_ep {int name; } ;
struct s3c_hsotg_req {int queue; } ;
struct s3c_hsotg_ep {int lock; int queue; struct s3c_hsotg* parent; } ;
struct s3c_hsotg {int dev; } ;
typedef int gfp_t ;


 int EINPROGRESS ;
 int INIT_LIST_HEAD (int *) ;
 int dev_dbg (int ,char*,int ,struct usb_request*,int ,int ,int ,int ,int ) ;
 int list_add_tail (int *,int *) ;
 int list_empty (int *) ;
 struct s3c_hsotg_ep* our_ep (struct usb_ep*) ;
 struct s3c_hsotg_req* our_req (struct usb_request*) ;
 int s3c_hsotg_map_dma (struct s3c_hsotg*,struct s3c_hsotg_ep*,struct usb_request*) ;
 int s3c_hsotg_start_req (struct s3c_hsotg*,struct s3c_hsotg_ep*,struct s3c_hsotg_req*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ using_dma (struct s3c_hsotg*) ;

__attribute__((used)) static int s3c_hsotg_ep_queue(struct usb_ep *ep, struct usb_request *req,
         gfp_t gfp_flags)
{
 struct s3c_hsotg_req *hs_req = our_req(req);
 struct s3c_hsotg_ep *hs_ep = our_ep(ep);
 struct s3c_hsotg *hs = hs_ep->parent;
 unsigned long irqflags;
 bool first;

 dev_dbg(hs->dev, "%s: req %p: %d@%p, noi=%d, zero=%d, snok=%d\n",
  ep->name, req, req->length, req->buf, req->no_interrupt,
  req->zero, req->short_not_ok);


 INIT_LIST_HEAD(&hs_req->queue);
 req->actual = 0;
 req->status = -EINPROGRESS;


 if (using_dma(hs)) {
  int ret = s3c_hsotg_map_dma(hs, hs_ep, req);
  if (ret)
   return ret;
 }

 spin_lock_irqsave(&hs_ep->lock, irqflags);

 first = list_empty(&hs_ep->queue);
 list_add_tail(&hs_req->queue, &hs_ep->queue);

 if (first)
  s3c_hsotg_start_req(hs, hs_ep, hs_req, 0);

 spin_unlock_irqrestore(&hs_ep->lock, irqflags);

 return 0;
}
