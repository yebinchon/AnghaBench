
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tomoyo_domain_info {int dummy; } ;
struct linux_binprm {TYPE_2__* file; TYPE_1__* cred; } ;
struct TYPE_4__ {int f_path; } ;
struct TYPE_3__ {struct tomoyo_domain_info* security; } ;


 int tomoyo_check_open_permission (struct tomoyo_domain_info*,int *,int) ;
 int tomoyo_find_next_domain (struct linux_binprm*) ;

__attribute__((used)) static int tomoyo_bprm_check_security(struct linux_binprm *bprm)
{
 struct tomoyo_domain_info *domain = bprm->cred->security;





 if (!domain)
  return tomoyo_find_next_domain(bprm);




 return tomoyo_check_open_permission(domain, &bprm->file->f_path, 1);
}
