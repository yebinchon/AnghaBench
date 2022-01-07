
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vx_core {int dummy; } ;
struct snd_vxpocket {int regCDSP; } ;


 int CDSP ;
 int VXP_CDSP_CODEC_RESET_MASK ;
 int msleep (int) ;
 int vx_inb (struct snd_vxpocket*,int ) ;
 int vx_outb (struct snd_vxpocket*,int ,int) ;

__attribute__((used)) static void vxp_reset_codec(struct vx_core *_chip)
{
 struct snd_vxpocket *chip = (struct snd_vxpocket *)_chip;


 vx_outb(chip, CDSP, chip->regCDSP | VXP_CDSP_CODEC_RESET_MASK);
 vx_inb(chip, CDSP);
 msleep(10);

 chip->regCDSP &= ~VXP_CDSP_CODEC_RESET_MASK;
 vx_outb(chip, CDSP, chip->regCDSP);
 vx_inb(chip, CDSP);
 msleep(1);
}
