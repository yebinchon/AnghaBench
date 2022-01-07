
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int amd64_native_gregset_reg_offset (int) ;

int
amd64_native_gregset_supplies_p (int regnum)
{
  return (amd64_native_gregset_reg_offset (regnum) != -1);
}
