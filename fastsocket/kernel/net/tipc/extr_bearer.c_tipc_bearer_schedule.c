
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct link {int dummy; } ;
struct TYPE_2__ {int lock; } ;
struct bearer {TYPE_1__ publ; } ;


 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int tipc_bearer_schedule_unlocked (struct bearer*,struct link*) ;

void tipc_bearer_schedule(struct bearer *b_ptr, struct link *l_ptr)
{
 spin_lock_bh(&b_ptr->publ.lock);
 tipc_bearer_schedule_unlocked(b_ptr, l_ptr);
 spin_unlock_bh(&b_ptr->publ.lock);
}
