
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lock; } ;
struct bearer {TYPE_1__ publ; } ;


 int bearer_push (struct bearer*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int tipc_bcbearer_push () ;

void tipc_bearer_lock_push(struct bearer *b_ptr)
{
 int res;

 spin_lock_bh(&b_ptr->publ.lock);
 res = bearer_push(b_ptr);
 spin_unlock_bh(&b_ptr->publ.lock);
 if (res)
  tipc_bcbearer_push();
}
