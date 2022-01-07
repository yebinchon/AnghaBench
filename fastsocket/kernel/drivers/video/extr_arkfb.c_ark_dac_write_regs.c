
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int * dac_regs ;
 int vga_rseq (int *,int) ;
 int vga_w (int *,int ,int) ;
 int vga_wseq (int *,int,int) ;

__attribute__((used)) static void ark_dac_write_regs(void *data, u8 *code, int count)
{
 u8 regval = vga_rseq(((void*)0), 0x1C);

 while (count != 0)
 {
  vga_wseq(((void*)0), 0x1C, regval | (code[0] & 4 ? 0x80 : 0));
  vga_w(((void*)0), dac_regs[code[0] & 3], code[1]);
  count--;
  code += 2;
 }

 vga_wseq(((void*)0), 0x1C, regval);
}
