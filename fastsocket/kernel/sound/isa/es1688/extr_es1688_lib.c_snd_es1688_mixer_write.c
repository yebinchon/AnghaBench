
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_es1688 {int dummy; } ;


 int ES1688P (struct snd_es1688*,int ) ;
 int MIXER_ADDR ;
 int MIXER_DATA ;
 int outb (unsigned char,int ) ;
 int udelay (int) ;

void snd_es1688_mixer_write(struct snd_es1688 *chip,
       unsigned char reg, unsigned char data)
{
 outb(reg, ES1688P(chip, MIXER_ADDR));
 udelay(10);
 outb(data, ES1688P(chip, MIXER_DATA));
 udelay(10);
}
