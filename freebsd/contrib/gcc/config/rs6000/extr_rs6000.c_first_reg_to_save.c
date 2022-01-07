
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ABI_DARWIN ;
 scalar_t__ ABI_V4 ;
 scalar_t__ DEFAULT_ABI ;
 int RS6000_PIC_OFFSET_TABLE_REGNUM ;
 scalar_t__ TARGET_MINIMAL_TOC ;
 scalar_t__ TARGET_TOC ;
 int * call_used_regs ;
 scalar_t__ current_function_uses_pic_offset_table ;
 scalar_t__ flag_pic ;
 scalar_t__* regs_ever_live ;

int
first_reg_to_save (void)
{
  int first_reg;


  for (first_reg = 13; first_reg <= 31; first_reg++)
    if (regs_ever_live[first_reg]
 && (! call_used_regs[first_reg]
     || (first_reg == RS6000_PIC_OFFSET_TABLE_REGNUM
  && ((DEFAULT_ABI == ABI_V4 && flag_pic != 0)
      || (DEFAULT_ABI == ABI_DARWIN && flag_pic)
      || (TARGET_TOC && TARGET_MINIMAL_TOC)))))
      break;
  return first_reg;
}
