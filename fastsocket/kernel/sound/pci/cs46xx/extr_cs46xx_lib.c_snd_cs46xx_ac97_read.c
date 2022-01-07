
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_cs46xx {int dummy; } ;
struct snd_ac97 {int num; struct snd_cs46xx* private_data; } ;


 int CS46XX_PRIMARY_CODEC_INDEX ;
 int CS46XX_SECONDARY_CODEC_INDEX ;
 scalar_t__ snd_BUG_ON (int) ;
 unsigned short snd_cs46xx_codec_read (struct snd_cs46xx*,unsigned short,int) ;

__attribute__((used)) static unsigned short snd_cs46xx_ac97_read(struct snd_ac97 * ac97,
         unsigned short reg)
{
 struct snd_cs46xx *chip = ac97->private_data;
 unsigned short val;
 int codec_index = ac97->num;

 if (snd_BUG_ON(codec_index != CS46XX_PRIMARY_CODEC_INDEX &&
         codec_index != CS46XX_SECONDARY_CODEC_INDEX))
  return 0xffff;

 val = snd_cs46xx_codec_read(chip, reg, codec_index);

 return val;
}
