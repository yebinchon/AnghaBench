
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct vga_regset {scalar_t__ regnum; int lowbit; int highbit; } ;


 scalar_t__ VGA_REGSET_END_VAL ;
 int vga_rseq (int *,scalar_t__) ;
 int vga_wseq (int *,scalar_t__,int) ;

void svga_wseq_multi(const struct vga_regset *regset, u32 value) {

 u8 regval, bitval, bitnum;

 while (regset->regnum != VGA_REGSET_END_VAL) {
  regval = vga_rseq(((void*)0), regset->regnum);
  bitnum = regset->lowbit;
  while (bitnum <= regset->highbit) {
   bitval = 1 << bitnum;
   regval = regval & ~bitval;
   if (value & 1) regval = regval | bitval;
   bitnum ++;
   value = value >> 1;
  }
  vga_wseq(((void*)0), regset->regnum, regval);
  regset ++;
 }
}
