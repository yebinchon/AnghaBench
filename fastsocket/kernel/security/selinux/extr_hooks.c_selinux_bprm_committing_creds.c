
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct task_security_struct {scalar_t__ sid; scalar_t__ osid; } ;
struct rlimit {int rlim_cur; int rlim_max; } ;
struct linux_binprm {TYPE_5__* cred; } ;
struct TYPE_11__ {struct task_security_struct* security; } ;
struct TYPE_10__ {TYPE_1__* signal; } ;
struct TYPE_9__ {TYPE_2__* signal; scalar_t__ pdeath_signal; int files; } ;
struct TYPE_8__ {struct rlimit* rlim; } ;
struct TYPE_7__ {struct rlimit* rlim; } ;


 int PROCESS__RLIMITINH ;
 size_t RLIMIT_CPU ;
 int RLIM_NLIMITS ;
 int SECCLASS_PROCESS ;
 int avc_has_perm (scalar_t__,scalar_t__,int ,int ,int *) ;
 TYPE_3__* current ;
 int flush_unauthorized_files (TYPE_5__*,int ) ;
 TYPE_4__ init_task ;
 int min (int ,int ) ;
 int update_rlimit_cpu (TYPE_3__*,int ) ;

__attribute__((used)) static void selinux_bprm_committing_creds(struct linux_binprm *bprm)
{
 struct task_security_struct *new_tsec;
 struct rlimit *rlim, *initrlim;
 int rc, i;

 new_tsec = bprm->cred->security;
 if (new_tsec->sid == new_tsec->osid)
  return;


 flush_unauthorized_files(bprm->cred, current->files);


 current->pdeath_signal = 0;
 rc = avc_has_perm(new_tsec->osid, new_tsec->sid, SECCLASS_PROCESS,
     PROCESS__RLIMITINH, ((void*)0));
 if (rc) {
  for (i = 0; i < RLIM_NLIMITS; i++) {
   rlim = current->signal->rlim + i;
   initrlim = init_task.signal->rlim + i;
   rlim->rlim_cur = min(rlim->rlim_max, initrlim->rlim_cur);
  }
  update_rlimit_cpu(current,
    current->signal->rlim[RLIMIT_CPU].rlim_cur);
 }
}
