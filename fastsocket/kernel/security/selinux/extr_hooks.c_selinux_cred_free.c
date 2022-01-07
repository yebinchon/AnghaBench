
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_security_struct {int dummy; } ;
struct cred {struct task_security_struct* security; } ;


 int BUG_ON (int) ;
 unsigned long PAGE_SIZE ;
 int kfree (struct task_security_struct*) ;

__attribute__((used)) static void selinux_cred_free(struct cred *cred)
{
 struct task_security_struct *tsec = cred->security;

 BUG_ON((unsigned long) cred->security < PAGE_SIZE);
 cred->security = (void *) 0x7UL;
 kfree(tsec);
}
