
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct list_head {int dummy; } ;
struct TYPE_3__ {int prev; } ;
struct TYPE_4__ {int req_lock; TYPE_1__ pending_req_list; } ;


 TYPE_2__ blizzard ;
 scalar_t__ likely (int) ;
 int list_empty (TYPE_1__*) ;
 int list_splice_init (struct list_head*,int ) ;
 int process_pending_requests () ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void submit_req_list(struct list_head *head)
{
 unsigned long flags;
 int process = 1;

 spin_lock_irqsave(&blizzard.req_lock, flags);
 if (likely(!list_empty(&blizzard.pending_req_list)))
  process = 0;
 list_splice_init(head, blizzard.pending_req_list.prev);
 spin_unlock_irqrestore(&blizzard.req_lock, flags);

 if (process)
  process_pending_requests();
}
