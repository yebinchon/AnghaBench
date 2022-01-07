
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct savagefb_par {int dummy; } ;
struct savage_reg {int* CRTC; int * Attribute; int * Graphics; int * Sequencer; int MiscOutReg; } ;


 int VGAdisablePalette (struct savagefb_par*) ;
 int VGAenablePalette (struct savagefb_par*) ;
 int VGAwATTR (int,int ,struct savagefb_par*) ;
 int VGAwCR (int,int,struct savagefb_par*) ;
 int VGAwGR (int,int ,struct savagefb_par*) ;
 int VGAwMISC (int ,struct savagefb_par*) ;
 int VGAwSEQ (int,int ,struct savagefb_par*) ;

__attribute__((used)) static void vgaHWRestore(struct savagefb_par *par, struct savage_reg *reg)
{
 int i;

 VGAwMISC(reg->MiscOutReg, par);

 for (i = 1; i < 5; i++)
  VGAwSEQ(i, reg->Sequencer[i], par);



 VGAwCR(17, reg->CRTC[17] & ~0x80, par);

 for (i = 0; i < 25; i++)
  VGAwCR(i, reg->CRTC[i], par);

 for (i = 0; i < 9; i++)
  VGAwGR(i, reg->Graphics[i], par);

 VGAenablePalette(par);

 for (i = 0; i < 21; i++)
  VGAwATTR(i, reg->Attribute[i], par);

 VGAdisablePalette(par);
}
