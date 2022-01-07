
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dlm_lock_resource {int state; int asts_reserved; int spinlock; } ;


 int BUG_ON (int) ;
 int DLM_LOCK_RES_MIGRATING ;
 int __dlm_print_one_lock_resource (struct dlm_lock_resource*) ;
 int assert_spin_locked (int *) ;
 int atomic_inc (int *) ;

void __dlm_lockres_reserve_ast(struct dlm_lock_resource *res)
{
 assert_spin_locked(&res->spinlock);
 if (res->state & DLM_LOCK_RES_MIGRATING) {
  __dlm_print_one_lock_resource(res);
 }
 BUG_ON(res->state & DLM_LOCK_RES_MIGRATING);

 atomic_inc(&res->asts_reserved);
}
