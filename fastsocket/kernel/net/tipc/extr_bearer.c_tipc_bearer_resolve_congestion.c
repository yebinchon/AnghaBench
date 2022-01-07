
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct link {int dummy; } ;
struct TYPE_2__ {int lock; } ;
struct bearer {TYPE_1__ publ; int cong_links; } ;


 int bearer_push (struct bearer*) ;
 scalar_t__ list_empty (int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int tipc_bearer_schedule_unlocked (struct bearer*,struct link*) ;

int tipc_bearer_resolve_congestion(struct bearer *b_ptr, struct link *l_ptr)
{
 int res = 1;

 if (list_empty(&b_ptr->cong_links))
  return 1;
 spin_lock_bh(&b_ptr->publ.lock);
 if (!bearer_push(b_ptr)) {
  tipc_bearer_schedule_unlocked(b_ptr, l_ptr);
  res = 0;
 }
 spin_unlock_bh(&b_ptr->publ.lock);
 return res;
}
