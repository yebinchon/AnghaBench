
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dlm_lock_resource {int state; scalar_t__ inflight_locks; int refmap; int dirty; } ;


 int BUG_ON (int) ;
 int DLM_LOCK_RES_DIRTY ;
 int O2NM_MAX_NODES ;
 int __dlm_lockres_has_locks (struct dlm_lock_resource*) ;
 int find_next_bit (int ,int,int ) ;
 scalar_t__ list_empty (int *) ;

int __dlm_lockres_unused(struct dlm_lock_resource *res)
{
 if (!__dlm_lockres_has_locks(res) &&
     (list_empty(&res->dirty) && !(res->state & DLM_LOCK_RES_DIRTY))) {


  int bit = find_next_bit(res->refmap, O2NM_MAX_NODES, 0);
  if (bit >= O2NM_MAX_NODES) {


   BUG_ON(res->inflight_locks != 0);
   return 1;
  }
 }
 return 0;
}
