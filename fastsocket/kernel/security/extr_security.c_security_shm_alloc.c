
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct shmid_kernel {int dummy; } ;
struct TYPE_2__ {int (* shm_alloc_security ) (struct shmid_kernel*) ;} ;


 TYPE_1__* security_ops ;
 int stub1 (struct shmid_kernel*) ;

int security_shm_alloc(struct shmid_kernel *shp)
{
 return security_ops->shm_alloc_security(shp);
}
