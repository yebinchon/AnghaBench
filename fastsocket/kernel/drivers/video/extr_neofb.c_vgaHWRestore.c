
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct neofb_par {int* CRTC; int * Attribute; int * Graphics; int * Sequencer; int MiscOutReg; } ;
struct fb_info {int dummy; } ;


 int VGA_MIS_W ;
 int VGAdisablePalette () ;
 int VGAenablePalette () ;
 int VGAwATTR (int,int ) ;
 int vga_w (int *,int ,int ) ;
 int vga_wcrt (int *,int,int) ;
 int vga_wgfx (int *,int,int ) ;
 int vga_wseq (int *,int,int ) ;

__attribute__((used)) static void vgaHWRestore(const struct fb_info *info,
    const struct neofb_par *par)
{
 int i;

 vga_w(((void*)0), VGA_MIS_W, par->MiscOutReg);

 for (i = 1; i < 5; i++)
  vga_wseq(((void*)0), i, par->Sequencer[i]);


 vga_wcrt(((void*)0), 17, par->CRTC[17] & ~0x80);

 for (i = 0; i < 25; i++)
  vga_wcrt(((void*)0), i, par->CRTC[i]);

 for (i = 0; i < 9; i++)
  vga_wgfx(((void*)0), i, par->Graphics[i]);

 VGAenablePalette();

 for (i = 0; i < 21; i++)
  VGAwATTR(i, par->Attribute[i]);

 VGAdisablePalette();
}
