
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vx_core {int dummy; } ;
struct snd_vxpocket {int regCDSP; } ;


 int CDSP ;
 int VXP_CDSP_VALID_IRQ_MASK ;
 int vx_outb (struct snd_vxpocket*,int ,int ) ;

__attribute__((used)) static void vxp_validate_irq(struct vx_core *_chip, int enable)
{
 struct snd_vxpocket *chip = (struct snd_vxpocket *)_chip;


 if (enable)
  chip->regCDSP |= VXP_CDSP_VALID_IRQ_MASK;
 else
  chip->regCDSP &= ~VXP_CDSP_VALID_IRQ_MASK;
 vx_outb(chip, CDSP, chip->regCDSP);
}
