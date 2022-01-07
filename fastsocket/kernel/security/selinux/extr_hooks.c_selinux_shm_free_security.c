
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct shmid_kernel {int shm_perm; } ;


 int ipc_free_security (int *) ;

__attribute__((used)) static void selinux_shm_free_security(struct shmid_kernel *shp)
{
 ipc_free_security(&shp->shm_perm);
}
