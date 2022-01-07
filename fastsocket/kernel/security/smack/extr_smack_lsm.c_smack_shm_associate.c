
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct shmid_kernel {int dummy; } ;


 int smack_flags_to_may (int) ;
 int smk_curacc_shm (struct shmid_kernel*,int) ;

__attribute__((used)) static int smack_shm_associate(struct shmid_kernel *shp, int shmflg)
{
 int may;

 may = smack_flags_to_may(shmflg);
 return smk_curacc_shm(shp, may);
}
