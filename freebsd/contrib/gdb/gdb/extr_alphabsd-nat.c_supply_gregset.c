
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gregset_t ;


 int alphabsd_supply_reg (char*,int) ;

void
supply_gregset (gregset_t *gregsetp)
{
  alphabsd_supply_reg ((char *) gregsetp, -1);
}
