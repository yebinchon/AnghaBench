
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gregset_t ;


 int alphabsd_fill_reg (char*,int) ;

void
fill_gregset (gregset_t *gregsetp, int regno)
{
  alphabsd_fill_reg ((char *) gregsetp, regno);
}
