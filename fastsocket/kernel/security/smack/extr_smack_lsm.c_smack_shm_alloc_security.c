
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kern_ipc_perm {int security; } ;
struct shmid_kernel {struct kern_ipc_perm shm_perm; } ;


 int current_security () ;

__attribute__((used)) static int smack_shm_alloc_security(struct shmid_kernel *shp)
{
 struct kern_ipc_perm *isp = &shp->shm_perm;

 isp->security = current_security();
 return 0;
}
