
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_cs4231 {unsigned char* image; int calibrate_mute; } ;


 int snd_cs4231_dout (struct snd_cs4231*,unsigned char,unsigned char) ;

__attribute__((used)) static inline void snd_cs4231_outm(struct snd_cs4231 *chip, unsigned char reg,
       unsigned char mask, unsigned char value)
{
 unsigned char tmp = (chip->image[reg] & mask) | value;

 chip->image[reg] = tmp;
 if (!chip->calibrate_mute)
  snd_cs4231_dout(chip, reg, tmp);
}
