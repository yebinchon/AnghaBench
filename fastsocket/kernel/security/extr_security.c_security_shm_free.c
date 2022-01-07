
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct shmid_kernel {int dummy; } ;
struct TYPE_2__ {int (* shm_free_security ) (struct shmid_kernel*) ;} ;


 TYPE_1__* security_ops ;
 int stub1 (struct shmid_kernel*) ;

void security_shm_free(struct shmid_kernel *shp)
{
 security_ops->shm_free_security(shp);
}
