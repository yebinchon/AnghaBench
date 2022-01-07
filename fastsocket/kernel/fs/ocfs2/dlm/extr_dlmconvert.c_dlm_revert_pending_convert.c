
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct dlm_lock_resource {int granted; } ;
struct TYPE_3__ {int convert_type; } ;
struct dlm_lock {TYPE_2__* lksb; TYPE_1__ ml; int list; } ;
struct TYPE_4__ {int flags; } ;


 int DLM_LKSB_GET_LVB ;
 int DLM_LKSB_PUT_LVB ;
 int LKM_IVMODE ;
 int list_move_tail (int *,int *) ;

void dlm_revert_pending_convert(struct dlm_lock_resource *res,
    struct dlm_lock *lock)
{

 list_move_tail(&lock->list, &res->granted);
 lock->ml.convert_type = LKM_IVMODE;
 lock->lksb->flags &= ~(DLM_LKSB_GET_LVB|DLM_LKSB_PUT_LVB);
}
