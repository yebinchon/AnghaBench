
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ak4117 {unsigned char* regmap; } ;


 int reg_write (struct ak4117*,unsigned char,unsigned char) ;

void snd_ak4117_reg_write(struct ak4117 *chip, unsigned char reg, unsigned char mask, unsigned char val)
{
 if (reg >= 5)
  return;
 reg_write(chip, reg, (chip->regmap[reg] & ~mask) | val);
}
