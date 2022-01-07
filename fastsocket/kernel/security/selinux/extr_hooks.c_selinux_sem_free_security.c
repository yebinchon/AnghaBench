
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sem_array {int sem_perm; } ;


 int ipc_free_security (int *) ;

__attribute__((used)) static void selinux_sem_free_security(struct sem_array *sma)
{
 ipc_free_security(&sma->sem_perm);
}
