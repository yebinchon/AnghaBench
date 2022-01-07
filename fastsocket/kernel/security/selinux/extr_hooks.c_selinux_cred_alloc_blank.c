
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_security_struct {int dummy; } ;
struct cred {struct task_security_struct* security; } ;
typedef int gfp_t ;


 int ENOMEM ;
 struct task_security_struct* kzalloc (int,int ) ;

__attribute__((used)) static int selinux_cred_alloc_blank(struct cred *cred, gfp_t gfp)
{
 struct task_security_struct *tsec;

 tsec = kzalloc(sizeof(struct task_security_struct), gfp);
 if (!tsec)
  return -ENOMEM;

 cred->security = tsec;
 return 0;
}
