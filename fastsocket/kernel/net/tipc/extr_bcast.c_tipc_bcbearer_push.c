
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ blocked; } ;
struct bearer {TYPE_1__ publ; } ;
struct TYPE_4__ {struct bearer bearer; } ;


 int bc_lock ;
 TYPE_2__* bcbearer ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int tipc_bearer_lock_push (struct bearer*) ;

void tipc_bcbearer_push(void)
{
 struct bearer *b_ptr;

 spin_lock_bh(&bc_lock);
 b_ptr = &bcbearer->bearer;
 if (b_ptr->publ.blocked) {
  b_ptr->publ.blocked = 0;
  tipc_bearer_lock_push(b_ptr);
 }
 spin_unlock_bh(&bc_lock);
}
