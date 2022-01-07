
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gdb_gregset_t ;


 int mipsfbsd_fill_reg (char*,int) ;

void
fill_gregset (gdb_gregset_t *gregs, int regno)
{
  mipsfbsd_fill_reg ((char *)gregs, regno);
}
