
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ad1816a {int dummy; } ;


 unsigned short snd_ad1816a_read (struct snd_ad1816a*,unsigned char) ;
 int snd_ad1816a_write (struct snd_ad1816a*,unsigned char,unsigned short) ;

__attribute__((used)) static void snd_ad1816a_write_mask(struct snd_ad1816a *chip, unsigned char reg,
       unsigned short mask, unsigned short value)
{
 snd_ad1816a_write(chip, reg,
  (value & mask) | (snd_ad1816a_read(chip, reg) & ~mask));
}
