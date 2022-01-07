
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sembuf {int dummy; } ;
struct sem_array {int sem_perm; } ;


 int SEM__READ ;
 int SEM__WRITE ;
 int ipc_has_perm (int *,int) ;

__attribute__((used)) static int selinux_sem_semop(struct sem_array *sma,
        struct sembuf *sops, unsigned nsops, int alter)
{
 u32 perms;

 if (alter)
  perms = SEM__READ | SEM__WRITE;
 else
  perms = SEM__READ;

 return ipc_has_perm(&sma->sem_perm, perms);
}
