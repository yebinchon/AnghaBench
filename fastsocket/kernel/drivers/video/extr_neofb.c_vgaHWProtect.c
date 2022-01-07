
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int VGAdisablePalette () ;
 int VGAenablePalette () ;
 unsigned char vga_rseq (int *,int) ;
 int vga_wseq (int *,int,int) ;

__attribute__((used)) static void vgaHWProtect(int on)
{
 unsigned char tmp;

 tmp = vga_rseq(((void*)0), 0x01);
 if (on) {



  vga_wseq(((void*)0), 0x00, 0x01);
  vga_wseq(((void*)0), 0x01, tmp | 0x20);

  VGAenablePalette();
 } else {



  vga_wseq(((void*)0), 0x01, tmp & ~0x20);
  vga_wseq(((void*)0), 0x00, 0x03);

  VGAdisablePalette();
 }
}
