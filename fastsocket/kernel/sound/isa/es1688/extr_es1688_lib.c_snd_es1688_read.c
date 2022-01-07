
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_es1688 {int dummy; } ;


 int snd_es1688_dsp_command (struct snd_es1688*,unsigned char) ;
 int snd_es1688_dsp_get_byte (struct snd_es1688*) ;

__attribute__((used)) static int snd_es1688_read(struct snd_es1688 *chip, unsigned char reg)
{

 if (!snd_es1688_dsp_command(chip, 0xc0))
  return -1;
 if (!snd_es1688_dsp_command(chip, reg))
  return -1;
 return snd_es1688_dsp_get_byte(chip);
}
