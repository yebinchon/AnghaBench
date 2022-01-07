
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct via82xx_modem {int dummy; } ;
struct snd_ac97 {int num; struct via82xx_modem* private_data; } ;


 unsigned short AC97_GPIO_STATUS ;
 int GPI_STATUS ;
 int VIAREG (struct via82xx_modem*,int ) ;
 unsigned short VIA_REG_AC97_CMD_SHIFT ;
 unsigned int VIA_REG_AC97_CODEC_ID_PRIMARY ;
 unsigned int VIA_REG_AC97_CODEC_ID_SECONDARY ;
 unsigned int VIA_REG_AC97_CODEC_ID_SHIFT ;
 unsigned short VIA_REG_AC97_DATA_SHIFT ;
 int outl (unsigned short,int ) ;
 int snd_via82xx_codec_ready (struct via82xx_modem*,int ) ;
 int snd_via82xx_codec_xwrite (struct via82xx_modem*,unsigned int) ;

__attribute__((used)) static void snd_via82xx_codec_write(struct snd_ac97 *ac97,
        unsigned short reg,
        unsigned short val)
{
 struct via82xx_modem *chip = ac97->private_data;
 unsigned int xval;
 if(reg == AC97_GPIO_STATUS) {
  outl(val, VIAREG(chip, GPI_STATUS));
  return;
 }
 xval = !ac97->num ? VIA_REG_AC97_CODEC_ID_PRIMARY : VIA_REG_AC97_CODEC_ID_SECONDARY;
 xval <<= VIA_REG_AC97_CODEC_ID_SHIFT;
 xval |= reg << VIA_REG_AC97_CMD_SHIFT;
 xval |= val << VIA_REG_AC97_DATA_SHIFT;
 snd_via82xx_codec_xwrite(chip, xval);
 snd_via82xx_codec_ready(chip, ac97->num);
}
