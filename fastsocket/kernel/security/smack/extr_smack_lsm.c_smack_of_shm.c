
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ security; } ;
struct shmid_kernel {TYPE_1__ shm_perm; } ;



__attribute__((used)) static char *smack_of_shm(struct shmid_kernel *shp)
{
 return (char *)shp->shm_perm.security;
}
