
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int name; int len; } ;
struct dlm_lock_resource {scalar_t__ inflight_locks; int wq; TYPE_1__ lockname; int spinlock; } ;
struct dlm_ctxt {int node_num; int name; } ;


 int BUG_ON (int) ;
 int assert_spin_locked (int *) ;
 int dlm_lockres_clear_refmap_bit (int ,struct dlm_lock_resource*) ;
 int mlog (int ,char*,int ,int ,int ,scalar_t__) ;
 int wake_up (int *) ;

void __dlm_lockres_drop_inflight_ref(struct dlm_ctxt *dlm,
       struct dlm_lock_resource *res,
       const char *file,
       int line)
{
 assert_spin_locked(&res->spinlock);

 BUG_ON(res->inflight_locks == 0);
 res->inflight_locks--;
 mlog(0, "%s:%.*s: inflight--: now %u\n",
      dlm->name, res->lockname.len, res->lockname.name,
      res->inflight_locks);
 if (res->inflight_locks == 0)
  dlm_lockres_clear_refmap_bit(dlm->node_num, res);
 wake_up(&res->wq);
}
