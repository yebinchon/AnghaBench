
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bitmap ;


 int PIC_FUNCTION_ADDR_REGNUM ;
 scalar_t__ TARGET_ABICALLS ;
 int TARGET_ABSOLUTE_ABICALLS ;
 int bitmap_set_bit (int ,int ) ;

__attribute__((used)) static void
mips_extra_live_on_entry (bitmap regs)
{
  if (TARGET_ABICALLS && !TARGET_ABSOLUTE_ABICALLS)
    bitmap_set_bit (regs, PIC_FUNCTION_ADDR_REGNUM);
}
