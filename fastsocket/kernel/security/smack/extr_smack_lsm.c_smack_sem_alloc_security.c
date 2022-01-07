
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kern_ipc_perm {int security; } ;
struct sem_array {struct kern_ipc_perm sem_perm; } ;


 int current_security () ;

__attribute__((used)) static int smack_sem_alloc_security(struct sem_array *sma)
{
 struct kern_ipc_perm *isp = &sma->sem_perm;

 isp->security = current_security();
 return 0;
}
