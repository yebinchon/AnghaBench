
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct task_security_struct {scalar_t__ sid; scalar_t__ osid; } ;
struct linux_binprm {int dummy; } ;
struct cred {struct task_security_struct* security; } ;


 int PROCESS__NOATSECURE ;
 int SECCLASS_PROCESS ;
 int avc_has_perm (scalar_t__,scalar_t__,int ,int ,int *) ;
 scalar_t__ cap_bprm_secureexec (struct linux_binprm*) ;
 struct cred* current_cred () ;

__attribute__((used)) static int selinux_bprm_secureexec(struct linux_binprm *bprm)
{
 const struct cred *cred = current_cred();
 const struct task_security_struct *tsec = cred->security;
 u32 sid, osid;
 int atsecure = 0;

 sid = tsec->sid;
 osid = tsec->osid;

 if (osid != sid) {



  atsecure = avc_has_perm(osid, sid,
     SECCLASS_PROCESS,
     PROCESS__NOATSECURE, ((void*)0));
 }

 return (atsecure || cap_bprm_secureexec(bprm));
}
