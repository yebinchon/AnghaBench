
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dlm_lock_resource {int dummy; } ;
struct dlm_lock {TYPE_1__* lksb; int list; } ;
struct TYPE_2__ {int flags; } ;


 int DLM_LKSB_GET_LVB ;
 int list_del_init (int *) ;

void dlm_revert_pending_lock(struct dlm_lock_resource *res,
        struct dlm_lock *lock)
{

 list_del_init(&lock->list);
 lock->lksb->flags &= ~DLM_LKSB_GET_LVB;
}
