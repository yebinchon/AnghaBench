
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_security_struct {int dummy; } ;
struct cred {struct task_security_struct* security; } ;
typedef int gfp_t ;


 int ENOMEM ;
 struct task_security_struct* kmemdup (struct task_security_struct const*,int,int ) ;

__attribute__((used)) static int selinux_cred_prepare(struct cred *new, const struct cred *old,
    gfp_t gfp)
{
 const struct task_security_struct *old_tsec;
 struct task_security_struct *tsec;

 old_tsec = old->security;

 tsec = kmemdup(old_tsec, sizeof(struct task_security_struct), gfp);
 if (!tsec)
  return -ENOMEM;

 new->security = tsec;
 return 0;
}
