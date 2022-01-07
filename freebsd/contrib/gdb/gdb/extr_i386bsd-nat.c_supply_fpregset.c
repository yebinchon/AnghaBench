
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fpregset_t ;


 int current_regcache ;
 int i387_supply_fsave (int ,int,int *) ;

void
supply_fpregset (fpregset_t *fpregsetp)
{
  i387_supply_fsave (current_regcache, -1, fpregsetp);
}
