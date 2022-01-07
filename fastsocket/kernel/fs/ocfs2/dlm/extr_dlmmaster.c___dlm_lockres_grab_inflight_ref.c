
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int name; int len; } ;
struct dlm_lock_resource {scalar_t__ inflight_locks; TYPE_1__ lockname; int refmap; int spinlock; } ;
struct dlm_ctxt {int name; int node_num; } ;


 int BUG_ON (int) ;
 int assert_spin_locked (int *) ;
 int dlm_lockres_set_refmap_bit (int ,struct dlm_lock_resource*) ;
 int mlog (int ,char*,int ,int ,int ,scalar_t__) ;
 int test_bit (int ,int ) ;

void __dlm_lockres_grab_inflight_ref(struct dlm_ctxt *dlm,
       struct dlm_lock_resource *res,
       int new_lockres,
       const char *file,
       int line)
{
 if (!new_lockres)
  assert_spin_locked(&res->spinlock);

 if (!test_bit(dlm->node_num, res->refmap)) {
  BUG_ON(res->inflight_locks != 0);
  dlm_lockres_set_refmap_bit(dlm->node_num, res);
 }
 res->inflight_locks++;
 mlog(0, "%s:%.*s: inflight++: now %u\n",
      dlm->name, res->lockname.len, res->lockname.name,
      res->inflight_locks);
}
