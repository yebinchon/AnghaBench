
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_security_struct {int dummy; } ;
struct cred {struct task_security_struct* security; } ;



__attribute__((used)) static void selinux_cred_transfer(struct cred *new, const struct cred *old)
{
 const struct task_security_struct *old_tsec = old->security;
 struct task_security_struct *tsec = new->security;

 *tsec = *old_tsec;
}
