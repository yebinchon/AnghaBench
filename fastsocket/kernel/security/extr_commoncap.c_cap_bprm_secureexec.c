
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct linux_binprm {scalar_t__ cap_effective; } ;
struct cred {scalar_t__ uid; scalar_t__ euid; scalar_t__ egid; scalar_t__ gid; int cap_permitted; } ;


 int cap_isclear (int ) ;
 struct cred* current_cred () ;

int cap_bprm_secureexec(struct linux_binprm *bprm)
{
 const struct cred *cred = current_cred();

 if (cred->uid != 0) {
  if (bprm->cap_effective)
   return 1;
  if (!cap_isclear(cred->cap_permitted))
   return 1;
 }

 return (cred->euid != cred->uid ||
  cred->egid != cred->gid);
}
