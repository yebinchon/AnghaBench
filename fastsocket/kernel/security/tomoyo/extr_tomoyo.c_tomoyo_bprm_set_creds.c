
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct linux_binprm {TYPE_1__* cred; int filename; scalar_t__ cred_prepared; } ;
struct TYPE_2__ {int * security; } ;


 int cap_bprm_set_creds (struct linux_binprm*) ;
 int tomoyo_load_policy (int ) ;
 int tomoyo_policy_loaded ;

__attribute__((used)) static int tomoyo_bprm_set_creds(struct linux_binprm *bprm)
{
 int rc;

 rc = cap_bprm_set_creds(bprm);
 if (rc)
  return rc;





 if (bprm->cred_prepared)
  return 0;




 if (!tomoyo_policy_loaded)
  tomoyo_load_policy(bprm->filename);




 bprm->cred->security = ((void*)0);
 return 0;
}
