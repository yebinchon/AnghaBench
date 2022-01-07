
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct blizzard_request {int flags; int entry; } ;
struct TYPE_2__ {int req_lock; int req_sema; int free_req_list; } ;


 int REQ_FROM_IRQ_POOL ;
 TYPE_1__ blizzard ;
 int list_add (int *,int *) ;
 int list_del (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int up (int *) ;

__attribute__((used)) static inline void free_req(struct blizzard_request *req)
{
 unsigned long flags;

 spin_lock_irqsave(&blizzard.req_lock, flags);

 list_del(&req->entry);
 list_add(&req->entry, &blizzard.free_req_list);
 if (!(req->flags & REQ_FROM_IRQ_POOL))
  up(&blizzard.req_sema);

 spin_unlock_irqrestore(&blizzard.req_lock, flags);
}
