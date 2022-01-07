
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct task_security_struct {scalar_t__ sockcreate_sid; scalar_t__ keycreate_sid; scalar_t__ create_sid; int sid; } ;
struct cred {struct task_security_struct* security; } ;


 int KERNEL_SERVICE__USE_AS_OVERRIDE ;
 int SECCLASS_KERNEL_SERVICE ;
 int avc_has_perm (int ,int ,int ,int ,int *) ;
 int current_sid () ;

__attribute__((used)) static int selinux_kernel_act_as(struct cred *new, u32 secid)
{
 struct task_security_struct *tsec = new->security;
 u32 sid = current_sid();
 int ret;

 ret = avc_has_perm(sid, secid,
      SECCLASS_KERNEL_SERVICE,
      KERNEL_SERVICE__USE_AS_OVERRIDE,
      ((void*)0));
 if (ret == 0) {
  tsec->sid = secid;
  tsec->create_sid = 0;
  tsec->keycreate_sid = 0;
  tsec->sockcreate_sid = 0;
 }
 return ret;
}
