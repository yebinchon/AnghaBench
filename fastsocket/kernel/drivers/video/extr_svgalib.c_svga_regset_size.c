
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct vga_regset {scalar_t__ regnum; scalar_t__ lowbit; scalar_t__ highbit; } ;


 scalar_t__ VGA_REGSET_END_VAL ;

__attribute__((used)) static unsigned int svga_regset_size(const struct vga_regset *regset)
{
 u8 count = 0;

 while (regset->regnum != VGA_REGSET_END_VAL) {
  count += regset->highbit - regset->lowbit + 1;
  regset ++;
 }
 return 1 << count;
}
