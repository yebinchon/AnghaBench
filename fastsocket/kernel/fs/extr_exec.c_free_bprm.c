
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct linux_binprm {scalar_t__ interp; scalar_t__ filename; scalar_t__ cred; } ;
struct TYPE_2__ {int cred_guard_mutex; } ;


 int abort_creds (scalar_t__) ;
 TYPE_1__* current ;
 int free_arg_pages (struct linux_binprm*) ;
 int kfree (struct linux_binprm*) ;
 int mutex_unlock (int *) ;

void free_bprm(struct linux_binprm *bprm)
{
 free_arg_pages(bprm);
 if (bprm->cred) {
  mutex_unlock(&current->cred_guard_mutex);
  abort_creds(bprm->cred);
 }

 if (bprm->interp != bprm->filename)
  kfree(bprm->interp);
 kfree(bprm);
}
