
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_es1688 {int dummy; } ;


 int ES1688P (struct snd_es1688*,int ) ;
 int MIXER_ADDR ;
 int MIXER_DATA ;
 unsigned char inb (int ) ;
 int outb (unsigned char,int ) ;
 int udelay (int) ;

__attribute__((used)) static unsigned char snd_es1688_mixer_read(struct snd_es1688 *chip, unsigned char reg)
{
 unsigned char result;

 outb(reg, ES1688P(chip, MIXER_ADDR));
 udelay(10);
 result = inb(ES1688P(chip, MIXER_DATA));
 udelay(10);
 return result;
}
