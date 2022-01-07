
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int panpos; } ;
struct matrox_fb_info {TYPE_1__ crtc1; } ;


 int M_EXTVGA_INDEX ;
 int matroxfb_DAC_lock_irqsave (unsigned long) ;
 int matroxfb_DAC_unlock_irqrestore (unsigned long) ;
 unsigned int mga_inb (int ) ;
 int mga_outb (int ,unsigned int) ;
 int mga_setr (int ,int,int) ;

__attribute__((used)) static void matroxfb_crtc1_panpos(struct matrox_fb_info *minfo)
{
 if (minfo->crtc1.panpos >= 0) {
  unsigned long flags;
  int panpos;

  matroxfb_DAC_lock_irqsave(flags);
  panpos = minfo->crtc1.panpos;
  if (panpos >= 0) {
   unsigned int extvga_reg;

   minfo->crtc1.panpos = -1;
   extvga_reg = mga_inb(M_EXTVGA_INDEX);
   mga_setr(M_EXTVGA_INDEX, 0x00, panpos);
   if (extvga_reg != 0x00) {
    mga_outb(M_EXTVGA_INDEX, extvga_reg);
   }
  }
  matroxfb_DAC_unlock_irqrestore(flags);
 }
}
