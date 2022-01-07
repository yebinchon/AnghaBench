
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vx_core {int dummy; } ;
struct snd_vx222 {int regCFG; } ;


 int CFG ;

 int VX_CFG_DATAIN_SEL_MASK ;
 int vx_outl (struct snd_vx222*,int ,int ) ;

__attribute__((used)) static void vx2_change_audio_source(struct vx_core *_chip, int src)
{
 struct snd_vx222 *chip = (struct snd_vx222 *)_chip;

 switch (src) {
 case 128:
  chip->regCFG |= VX_CFG_DATAIN_SEL_MASK;
  break;
 default:
  chip->regCFG &= ~VX_CFG_DATAIN_SEL_MASK;
  break;
 }
 vx_outl(chip, CFG, chip->regCFG);
}
