
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct shmid_kernel {int dummy; } ;


 int EINVAL ;




 int MAY_READ ;
 int MAY_READWRITE ;




 int smk_curacc_shm (struct shmid_kernel*,int) ;

__attribute__((used)) static int smack_shm_shmctl(struct shmid_kernel *shp, int cmd)
{
 int may;

 switch (cmd) {
 case 132:
 case 129:
  may = MAY_READ;
  break;
 case 133:
 case 130:
 case 128:
 case 134:
  may = MAY_READWRITE;
  break;
 case 135:
 case 131:



  return 0;
 default:
  return -EINVAL;
 }
 return smk_curacc_shm(shp, may);
}
