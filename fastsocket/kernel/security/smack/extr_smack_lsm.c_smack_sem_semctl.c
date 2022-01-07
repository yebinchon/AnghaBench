
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sem_array {int dummy; } ;


 int EINVAL ;
 int MAY_READ ;
 int MAY_READWRITE ;




 int smk_curacc_sem (struct sem_array*,int) ;

__attribute__((used)) static int smack_sem_semctl(struct sem_array *sma, int cmd)
{
 int may;

 switch (cmd) {
 case 138:
 case 139:
 case 136:
 case 137:
 case 140:
 case 132:
 case 130:
  may = MAY_READ;
  break;
 case 128:
 case 129:
 case 134:
 case 133:
  may = MAY_READWRITE;
  break;
 case 135:
 case 131:



  return 0;
 default:
  return -EINVAL;
 }

 return smk_curacc_sem(sma, may);
}
