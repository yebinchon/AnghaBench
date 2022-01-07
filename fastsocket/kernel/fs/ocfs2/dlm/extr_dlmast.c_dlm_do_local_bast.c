
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dlm_lock_resource {int dummy; } ;
struct TYPE_2__ {scalar_t__ node; } ;
struct dlm_lock {int astdata; TYPE_1__ ml; int (* bast ) (int ,int) ;} ;
struct dlm_ctxt {scalar_t__ node_num; } ;
typedef int (* dlm_bastlockfunc_t ) (int ,int) ;


 int BUG_ON (int) ;
 int mlog_entry_void () ;
 int stub1 (int ,int) ;

void dlm_do_local_bast(struct dlm_ctxt *dlm, struct dlm_lock_resource *res,
         struct dlm_lock *lock, int blocked_type)
{
 dlm_bastlockfunc_t *fn = lock->bast;

 mlog_entry_void();
 BUG_ON(lock->ml.node != dlm->node_num);

 (*fn)(lock->astdata, blocked_type);
}
