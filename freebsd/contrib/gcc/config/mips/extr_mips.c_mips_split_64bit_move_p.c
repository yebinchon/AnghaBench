
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 scalar_t__ FP_REG_RTX_P (int ) ;
 scalar_t__ MEM_P (int ) ;
 scalar_t__ TARGET_64BIT ;
 int mips_isa ;

bool
mips_split_64bit_move_p (rtx dest, rtx src)
{
  if (TARGET_64BIT)
    return 0;


  if (FP_REG_RTX_P (src) && FP_REG_RTX_P (dest))
    return 0;



  if (mips_isa > 1)
    {
      if (FP_REG_RTX_P (dest) && MEM_P (src))
 return 0;
      if (FP_REG_RTX_P (src) && MEM_P (dest))
 return 0;
    }
  return 1;
}
