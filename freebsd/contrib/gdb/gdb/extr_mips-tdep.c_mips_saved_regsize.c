
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gdbarch_tdep {unsigned int mips_default_saved_regsize; } ;


 scalar_t__ mips_saved_regsize_string ;
 scalar_t__ size_64 ;
 scalar_t__ size_auto ;

__attribute__((used)) static unsigned int
mips_saved_regsize (struct gdbarch_tdep *tdep)
{
  if (mips_saved_regsize_string == size_auto)
    return tdep->mips_default_saved_regsize;
  else if (mips_saved_regsize_string == size_64)
    return 8;
  else
    return 4;
}
