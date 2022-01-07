
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vx_core {int dummy; } ;
struct snd_vxpocket {int regDIALOG; } ;


 int DIALOG ;
 int ICR ;
 int VXP_DLG_DMA16_SEL_MASK ;
 int VXP_DLG_DMAREAD_SEL_MASK ;
 int VXP_DLG_DMAWRITE_SEL_MASK ;
 int vx_outb (struct snd_vxpocket*,int ,int) ;

__attribute__((used)) static void vx_release_pseudo_dma(struct vx_core *_chip)
{
 struct snd_vxpocket *chip = (struct snd_vxpocket *)_chip;


 chip->regDIALOG &= ~(VXP_DLG_DMAWRITE_SEL_MASK|
        VXP_DLG_DMAREAD_SEL_MASK|
        VXP_DLG_DMA16_SEL_MASK);
 vx_outb(chip, DIALOG, chip->regDIALOG);

 vx_outb(chip, ICR, 0);
}
