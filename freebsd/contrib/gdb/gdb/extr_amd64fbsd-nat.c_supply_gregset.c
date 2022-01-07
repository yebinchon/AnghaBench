
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gregset_t ;


 int amd64_supply_native_gregset (int ,int *,int) ;
 int current_regcache ;

void
supply_gregset (gregset_t *gregsetp)
{
  amd64_supply_native_gregset (current_regcache, gregsetp, -1);
}
