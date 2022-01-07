
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dlm_lockstatus {int dummy; } ;
struct dlm_lock_resource {int dummy; } ;
struct TYPE_2__ {scalar_t__ node; } ;
struct dlm_lock {int astdata; TYPE_1__ ml; int (* ast ) (int ) ;struct dlm_lockstatus* lksb; } ;
struct dlm_ctxt {scalar_t__ node_num; } ;
typedef int (* dlm_astlockfunc_t ) (int ) ;


 int BUG_ON (int) ;
 int dlm_update_lvb (struct dlm_ctxt*,struct dlm_lock_resource*,struct dlm_lock*) ;
 int mlog_entry_void () ;
 int stub1 (int ) ;

void dlm_do_local_ast(struct dlm_ctxt *dlm, struct dlm_lock_resource *res,
        struct dlm_lock *lock)
{
 dlm_astlockfunc_t *fn;
 struct dlm_lockstatus *lksb;

 mlog_entry_void();

 lksb = lock->lksb;
 fn = lock->ast;
 BUG_ON(lock->ml.node != dlm->node_num);

 dlm_update_lvb(dlm, res, lock);
 (*fn)(lock->astdata);
}
