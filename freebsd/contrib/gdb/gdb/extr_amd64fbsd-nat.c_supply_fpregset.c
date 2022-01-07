
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fpregset_t ;


 int amd64_supply_fxsave (int ,int,int *) ;
 int current_regcache ;

void
supply_fpregset (fpregset_t *fpregsetp)
{
  amd64_supply_fxsave (current_regcache, -1, fpregsetp);
}
