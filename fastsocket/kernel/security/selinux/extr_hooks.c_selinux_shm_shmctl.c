
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct shmid_kernel {int shm_perm; } ;
 int SHM__ASSOCIATE ;
 int SHM__DESTROY ;
 int SHM__GETATTR ;
 int SHM__LOCK ;
 int SHM__SETATTR ;
 int SYSTEM__IPC_INFO ;
 int current ;
 int ipc_has_perm (int *,int) ;
 int task_has_system (int ,int ) ;

__attribute__((used)) static int selinux_shm_shmctl(struct shmid_kernel *shp, int cmd)
{
 int perms;
 int err;

 switch (cmd) {
 case 135:
 case 131:

  return task_has_system(current, SYSTEM__IPC_INFO);
 case 132:
 case 129:
  perms = SHM__GETATTR | SHM__ASSOCIATE;
  break;
 case 133:
  perms = SHM__SETATTR;
  break;
 case 130:
 case 128:
  perms = SHM__LOCK;
  break;
 case 134:
  perms = SHM__DESTROY;
  break;
 default:
  return 0;
 }

 err = ipc_has_perm(&shp->shm_perm, perms);
 return err;
}
