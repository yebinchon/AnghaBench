
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fpregset_t ;


 int alphabsd_supply_fpreg (char*,int) ;

void
supply_fpregset (fpregset_t *fpregsetp)
{
  alphabsd_supply_fpreg ((char *) fpregsetp, -1);
}
