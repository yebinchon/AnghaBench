
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kern_ipc_perm {struct ipc_security_struct* security; } ;
struct ipc_security_struct {int dummy; } ;


 int kfree (struct ipc_security_struct*) ;

__attribute__((used)) static void ipc_free_security(struct kern_ipc_perm *perm)
{
 struct ipc_security_struct *isec = perm->security;
 perm->security = ((void*)0);
 kfree(isec);
}
