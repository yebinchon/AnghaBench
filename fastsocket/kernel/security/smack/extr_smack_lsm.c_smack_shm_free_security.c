
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kern_ipc_perm {int * security; } ;
struct shmid_kernel {struct kern_ipc_perm shm_perm; } ;



__attribute__((used)) static void smack_shm_free_security(struct shmid_kernel *shp)
{
 struct kern_ipc_perm *isp = &shp->shm_perm;

 isp->security = ((void*)0);
}
