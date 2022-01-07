
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ expires; } ;
struct ak4117 {unsigned char* regmap; int init; TYPE_1__ timer; } ;


 unsigned char AK4117_PWN ;
 size_t AK4117_REG_PWRDN ;
 unsigned char AK4117_RST ;
 int add_timer (TYPE_1__*) ;
 int del_timer (TYPE_1__*) ;
 scalar_t__ jiffies ;
 int reg_write (struct ak4117*,size_t,unsigned char) ;
 int udelay (int) ;

void snd_ak4117_reinit(struct ak4117 *chip)
{
 unsigned char old = chip->regmap[AK4117_REG_PWRDN], reg;

 del_timer(&chip->timer);
 chip->init = 1;

 reg_write(chip, AK4117_REG_PWRDN, 0);
 udelay(200);

 reg_write(chip, AK4117_REG_PWRDN, (old | AK4117_RST) & ~AK4117_PWN);
 udelay(200);
 for (reg = 1; reg < 5; reg++)
  reg_write(chip, reg, chip->regmap[reg]);

 reg_write(chip, AK4117_REG_PWRDN, old | AK4117_RST | AK4117_PWN);
 chip->init = 0;
 chip->timer.expires = 1 + jiffies;
 add_timer(&chip->timer);
}
