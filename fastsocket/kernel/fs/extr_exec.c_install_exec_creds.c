
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct linux_binprm {int * cred; } ;
struct TYPE_2__ {int cred_guard_mutex; } ;


 int commit_creds (int *) ;
 TYPE_1__* current ;
 int mutex_unlock (int *) ;
 int security_bprm_committed_creds (struct linux_binprm*) ;
 int security_bprm_committing_creds (struct linux_binprm*) ;

void install_exec_creds(struct linux_binprm *bprm)
{
 security_bprm_committing_creds(bprm);

 commit_creds(bprm->cred);
 bprm->cred = ((void*)0);





 security_bprm_committed_creds(bprm);
 mutex_unlock(&current->cred_guard_mutex);
}
