
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dlm_lockstatus {int flags; } ;
struct dlm_lock_resource {int dummy; } ;
struct TYPE_2__ {scalar_t__ node; } ;
struct dlm_lock {TYPE_1__ ml; struct dlm_lockstatus* lksb; } ;
struct dlm_ctxt {scalar_t__ node_num; } ;


 int BUG_ON (int) ;
 int dlm_send_proxy_ast (struct dlm_ctxt*,struct dlm_lock_resource*,struct dlm_lock*,int) ;
 int dlm_update_lvb (struct dlm_ctxt*,struct dlm_lock_resource*,struct dlm_lock*) ;
 int mlog_entry_void () ;

int dlm_do_remote_ast(struct dlm_ctxt *dlm, struct dlm_lock_resource *res,
        struct dlm_lock *lock)
{
 int ret;
 struct dlm_lockstatus *lksb;
 int lksbflags;

 mlog_entry_void();

 lksb = lock->lksb;
 BUG_ON(lock->ml.node == dlm->node_num);

 lksbflags = lksb->flags;
 dlm_update_lvb(dlm, res, lock);



 ret = dlm_send_proxy_ast(dlm, res, lock, lksbflags);
 return ret;
}
