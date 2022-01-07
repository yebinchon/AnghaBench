
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hwa742_request {int flags; int entry; } ;
struct TYPE_2__ {int req_lock; int req_sema; int free_req_list; } ;


 int REQ_FROM_IRQ_POOL ;
 TYPE_1__ hwa742 ;
 int list_add (int *,int *) ;
 int list_del (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int up (int *) ;

__attribute__((used)) static inline void free_req(struct hwa742_request *req)
{
 unsigned long flags;

 spin_lock_irqsave(&hwa742.req_lock, flags);

 list_del(&req->entry);
 list_add(&req->entry, &hwa742.free_req_list);
 if (!(req->flags & REQ_FROM_IRQ_POOL))
  up(&hwa742.req_sema);

 spin_unlock_irqrestore(&hwa742.req_lock, flags);
}
