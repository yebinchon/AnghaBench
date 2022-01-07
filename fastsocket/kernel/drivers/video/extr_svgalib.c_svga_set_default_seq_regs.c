
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int VGA_SEQ_CHARACTER_MAP ;
 int VGA_SEQ_CLOCK_MODE ;
 int VGA_SEQ_MEMORY_MODE ;
 int VGA_SEQ_PLANE_WRITE ;
 int VGA_SR01_CHAR_CLK_8DOTS ;
 int VGA_SR02_ALL_PLANES ;
 int VGA_SR04_EXT_MEM ;
 int VGA_SR04_SEQ_MODE ;
 int vga_wseq (int *,int ,int) ;

void svga_set_default_seq_regs(void)
{

 vga_wseq(((void*)0), VGA_SEQ_CLOCK_MODE, VGA_SR01_CHAR_CLK_8DOTS);
 vga_wseq(((void*)0), VGA_SEQ_PLANE_WRITE, VGA_SR02_ALL_PLANES);
 vga_wseq(((void*)0), VGA_SEQ_CHARACTER_MAP, 0x00);

 vga_wseq(((void*)0), VGA_SEQ_MEMORY_MODE, VGA_SR04_EXT_MEM | VGA_SR04_SEQ_MODE);
}
