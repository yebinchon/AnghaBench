
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tipc_bearer {int dummy; } ;
struct TYPE_2__ {int lock; scalar_t__ blocked; } ;
struct bearer {TYPE_1__ publ; int cong_links; int continue_count; } ;
typedef int Handler ;


 int list_empty (int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 scalar_t__ tipc_bearer_lock_push ;
 int tipc_k_signal (int ,unsigned long) ;

void tipc_continue(struct tipc_bearer *tb_ptr)
{
 struct bearer *b_ptr = (struct bearer *)tb_ptr;

 spin_lock_bh(&b_ptr->publ.lock);
 b_ptr->continue_count++;
 if (!list_empty(&b_ptr->cong_links))
  tipc_k_signal((Handler)tipc_bearer_lock_push, (unsigned long)b_ptr);
 b_ptr->publ.blocked = 0;
 spin_unlock_bh(&b_ptr->publ.lock);
}
