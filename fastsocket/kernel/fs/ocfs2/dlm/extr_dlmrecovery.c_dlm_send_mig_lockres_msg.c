
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
struct dlm_migratable_lockres {int flags; int master; int num_locks; int total_locks; int mig_cookie; } ;
struct dlm_migratable_lock {int dummy; } ;
struct TYPE_2__ {int len; int name; } ;
struct dlm_lock_resource {TYPE_1__ lockname; } ;
struct dlm_ctxt {int key; int name; } ;


 int BUG () ;
 int BUG_ON (int) ;
 int DLM_MAX_MIGRATABLE_LOCKS ;
 int DLM_MIG_LOCKRES_MSG ;
 int DLM_MRES_ALL_DONE ;
 int DLM_MRES_MIGRATION ;
 int EFAULT ;
 int ML_ERROR ;
 int be32_to_cpu (int ) ;
 int be64_to_cpu (int ) ;
 int dlm_init_migratable_lockres (struct dlm_migratable_lockres*,int ,int ,int,int ,int,int) ;
 int mlog (int ,char*,int,...) ;
 int mlog_errno (int) ;
 int o2net_send_message (int ,int ,struct dlm_migratable_lockres*,int,int,int*) ;

__attribute__((used)) static int dlm_send_mig_lockres_msg(struct dlm_ctxt *dlm,
          struct dlm_migratable_lockres *mres,
          u8 send_to,
          struct dlm_lock_resource *res,
          int total_locks)
{
 u64 mig_cookie = be64_to_cpu(mres->mig_cookie);
 int mres_total_locks = be32_to_cpu(mres->total_locks);
 int sz, ret = 0, status = 0;
 u8 orig_flags = mres->flags,
    orig_master = mres->master;

 BUG_ON(mres->num_locks > DLM_MAX_MIGRATABLE_LOCKS);
 if (!mres->num_locks)
  return 0;

 sz = sizeof(struct dlm_migratable_lockres) +
  (mres->num_locks * sizeof(struct dlm_migratable_lock));


 orig_flags = mres->flags;
 BUG_ON(total_locks > mres_total_locks);
 if (total_locks == mres_total_locks)
  mres->flags |= DLM_MRES_ALL_DONE;

 mlog(0, "%s:%.*s: sending mig lockres (%s) to %u\n",
      dlm->name, res->lockname.len, res->lockname.name,
      orig_flags & DLM_MRES_MIGRATION ? "migration" : "recovery",
      send_to);


 ret = o2net_send_message(DLM_MIG_LOCKRES_MSG, dlm->key, mres,
     sz, send_to, &status);
 if (ret < 0) {


  mlog_errno(ret);
 } else {

  ret = status;
  if (ret < 0) {
   mlog_errno(ret);

   if (ret == -EFAULT) {
    mlog(ML_ERROR, "node %u told me to kill "
         "myself!\n", send_to);
    BUG();
   }
  }
 }


 dlm_init_migratable_lockres(mres, res->lockname.name,
        res->lockname.len, mres_total_locks,
        mig_cookie, orig_flags, orig_master);
 return ret;
}
