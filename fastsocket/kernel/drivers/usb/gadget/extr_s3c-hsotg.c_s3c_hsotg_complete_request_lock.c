
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s3c_hsotg_req {int dummy; } ;
struct s3c_hsotg_ep {int lock; } ;
struct s3c_hsotg {int dummy; } ;


 int s3c_hsotg_complete_request (struct s3c_hsotg*,struct s3c_hsotg_ep*,struct s3c_hsotg_req*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void s3c_hsotg_complete_request_lock(struct s3c_hsotg *hsotg,
         struct s3c_hsotg_ep *hs_ep,
         struct s3c_hsotg_req *hs_req,
         int result)
{
 unsigned long flags;

 spin_lock_irqsave(&hs_ep->lock, flags);
 s3c_hsotg_complete_request(hsotg, hs_ep, hs_req, result);
 spin_unlock_irqrestore(&hs_ep->lock, flags);
}
