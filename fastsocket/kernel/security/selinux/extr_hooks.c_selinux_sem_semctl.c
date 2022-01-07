
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sem_array {int sem_perm; } ;
 int SEM__ASSOCIATE ;
 int SEM__DESTROY ;
 int SEM__GETATTR ;
 int SEM__READ ;
 int SEM__SETATTR ;
 int SEM__WRITE ;


 int SYSTEM__IPC_INFO ;
 int current ;
 int ipc_has_perm (int *,int) ;
 int task_has_system (int ,int ) ;

__attribute__((used)) static int selinux_sem_semctl(struct sem_array *sma, int cmd)
{
 int err;
 u32 perms;

 switch (cmd) {
 case 135:
 case 131:

  return task_has_system(current, SYSTEM__IPC_INFO);
 case 138:
 case 139:
 case 136:
  perms = SEM__GETATTR;
  break;
 case 137:
 case 140:
  perms = SEM__READ;
  break;
 case 128:
 case 129:
  perms = SEM__WRITE;
  break;
 case 134:
  perms = SEM__DESTROY;
  break;
 case 133:
  perms = SEM__SETATTR;
  break;
 case 132:
 case 130:
  perms = SEM__GETATTR | SEM__ASSOCIATE;
  break;
 default:
  return 0;
 }

 err = ipc_has_perm(&sma->sem_perm, perms);
 return err;
}
