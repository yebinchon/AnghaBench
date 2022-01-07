
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int name; int len; } ;
struct dlm_lock_resource {int purge; int owner; TYPE_1__ lockname; int last_used; int spinlock; } ;
struct dlm_ctxt {int purge_count; int purge_list; int spinlock; } ;


 scalar_t__ __dlm_lockres_unused (struct dlm_lock_resource*) ;
 int assert_spin_locked (int *) ;
 int dlm_lockres_get (struct dlm_lock_resource*) ;
 int dlm_lockres_put (struct dlm_lock_resource*) ;
 int jiffies ;
 int list_add_tail (int *,int *) ;
 int list_del_init (int *) ;
 scalar_t__ list_empty (int *) ;
 int mlog (int ,char*,int ,int ,struct dlm_lock_resource*,...) ;
 int mlog_entry (char*,int ,int ) ;

void __dlm_lockres_calc_usage(struct dlm_ctxt *dlm,
         struct dlm_lock_resource *res)
{
 mlog_entry("%.*s\n", res->lockname.len, res->lockname.name);

 assert_spin_locked(&dlm->spinlock);
 assert_spin_locked(&res->spinlock);

 if (__dlm_lockres_unused(res)){
  if (list_empty(&res->purge)) {
   mlog(0, "putting lockres %.*s:%p onto purge list\n",
        res->lockname.len, res->lockname.name, res);

   res->last_used = jiffies;
   dlm_lockres_get(res);
   list_add_tail(&res->purge, &dlm->purge_list);
   dlm->purge_count++;
  }
 } else if (!list_empty(&res->purge)) {
  mlog(0, "removing lockres %.*s:%p from purge list, owner=%u\n",
       res->lockname.len, res->lockname.name, res, res->owner);

  list_del_init(&res->purge);
  dlm_lockres_put(res);
  dlm->purge_count--;
 }
}
