
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_8__ ;
typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct task_struct {int dummy; } ;
struct task_security_struct {scalar_t__ sid; scalar_t__ osid; scalar_t__ exec_sid; scalar_t__ sockcreate_sid; scalar_t__ keycreate_sid; scalar_t__ create_sid; } ;
struct linux_binprm {int unsafe; int per_clear; TYPE_7__* file; TYPE_2__* cred; scalar_t__ cred_prepared; } ;
struct inode_security_struct {scalar_t__ sid; } ;
struct inode {struct inode_security_struct* i_security; } ;
struct TYPE_14__ {TYPE_5__* mnt; TYPE_1__* dentry; } ;
struct TYPE_11__ {TYPE_6__ path; } ;
struct TYPE_12__ {TYPE_3__ fs; } ;
struct common_audit_data {TYPE_4__ u; } ;
struct TYPE_16__ {struct task_security_struct* security; } ;
struct TYPE_15__ {TYPE_6__ f_path; } ;
struct TYPE_13__ {int mnt_flags; } ;
struct TYPE_10__ {struct task_security_struct* security; } ;
struct TYPE_9__ {struct inode* d_inode; } ;


 int COMMON_AUDIT_DATA_INIT (struct common_audit_data*,int ) ;
 int EPERM ;
 int FILE__ENTRYPOINT ;
 int FILE__EXECUTE_NO_TRANS ;
 int FS ;
 int LSM_UNSAFE_PTRACE ;
 int LSM_UNSAFE_PTRACE_CAP ;
 int LSM_UNSAFE_SHARE ;
 int MNT_NOSUID ;
 int PER_CLEAR_ON_SETID ;
 int PROCESS__PTRACE ;
 int PROCESS__SHARE ;
 int PROCESS__TRANSITION ;
 int SECCLASS_FILE ;
 int SECCLASS_PROCESS ;
 TYPE_8__* __task_cred (struct task_struct*) ;
 int avc_has_perm (scalar_t__,scalar_t__,int ,int ,struct common_audit_data*) ;
 int cap_bprm_set_creds (struct linux_binprm*) ;
 int current ;
 struct task_security_struct* current_security () ;
 scalar_t__ likely (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int security_transition_sid (scalar_t__,scalar_t__,int ,scalar_t__*) ;
 struct task_struct* tracehook_tracer_task (int ) ;

__attribute__((used)) static int selinux_bprm_set_creds(struct linux_binprm *bprm)
{
 const struct task_security_struct *old_tsec;
 struct task_security_struct *new_tsec;
 struct inode_security_struct *isec;
 struct common_audit_data ad;
 struct inode *inode = bprm->file->f_path.dentry->d_inode;
 int rc;

 rc = cap_bprm_set_creds(bprm);
 if (rc)
  return rc;



 if (bprm->cred_prepared)
  return 0;

 old_tsec = current_security();
 new_tsec = bprm->cred->security;
 isec = inode->i_security;


 new_tsec->sid = old_tsec->sid;
 new_tsec->osid = old_tsec->sid;


 new_tsec->create_sid = 0;
 new_tsec->keycreate_sid = 0;
 new_tsec->sockcreate_sid = 0;

 if (old_tsec->exec_sid) {
  new_tsec->sid = old_tsec->exec_sid;

  new_tsec->exec_sid = 0;
 } else {

  rc = security_transition_sid(old_tsec->sid, isec->sid,
          SECCLASS_PROCESS, &new_tsec->sid);
  if (rc)
   return rc;
 }

 COMMON_AUDIT_DATA_INIT(&ad, FS);
 ad.u.fs.path = bprm->file->f_path;

 if (bprm->file->f_path.mnt->mnt_flags & MNT_NOSUID)
  new_tsec->sid = old_tsec->sid;

 if (new_tsec->sid == old_tsec->sid) {
  rc = avc_has_perm(old_tsec->sid, isec->sid,
      SECCLASS_FILE, FILE__EXECUTE_NO_TRANS, &ad);
  if (rc)
   return rc;
 } else {

  rc = avc_has_perm(old_tsec->sid, new_tsec->sid,
      SECCLASS_PROCESS, PROCESS__TRANSITION, &ad);
  if (rc)
   return rc;

  rc = avc_has_perm(new_tsec->sid, isec->sid,
      SECCLASS_FILE, FILE__ENTRYPOINT, &ad);
  if (rc)
   return rc;


  if (bprm->unsafe & LSM_UNSAFE_SHARE) {
   rc = avc_has_perm(old_tsec->sid, new_tsec->sid,
       SECCLASS_PROCESS, PROCESS__SHARE,
       ((void*)0));
   if (rc)
    return -EPERM;
  }



  if (bprm->unsafe &
      (LSM_UNSAFE_PTRACE | LSM_UNSAFE_PTRACE_CAP)) {
   struct task_struct *tracer;
   struct task_security_struct *sec;
   u32 ptsid = 0;

   rcu_read_lock();
   tracer = tracehook_tracer_task(current);
   if (likely(tracer != ((void*)0))) {
    sec = __task_cred(tracer)->security;
    ptsid = sec->sid;
   }
   rcu_read_unlock();

   if (ptsid != 0) {
    rc = avc_has_perm(ptsid, new_tsec->sid,
        SECCLASS_PROCESS,
        PROCESS__PTRACE, ((void*)0));
    if (rc)
     return -EPERM;
   }
  }


  bprm->per_clear |= PER_CLEAR_ON_SETID;
 }

 return 0;
}
