
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ak4114 {unsigned char* regmap; unsigned char* txcsb; } ;


 unsigned char AK4114_PWN ;
 size_t AK4114_REG_PWRDN ;
 unsigned char AK4114_REG_TXCSB0 ;
 unsigned char AK4114_RST ;
 int reg_write (struct ak4114*,size_t,unsigned char) ;
 int udelay (int) ;

__attribute__((used)) static void ak4114_init_regs(struct ak4114 *chip)
{
 unsigned char old = chip->regmap[AK4114_REG_PWRDN], reg;


 reg_write(chip, AK4114_REG_PWRDN, old & ~(AK4114_RST|AK4114_PWN));
 udelay(200);

 reg_write(chip, AK4114_REG_PWRDN, (old | AK4114_RST) & ~AK4114_PWN);
 udelay(200);
 for (reg = 1; reg < 7; reg++)
  reg_write(chip, reg, chip->regmap[reg]);
 for (reg = 0; reg < 5; reg++)
  reg_write(chip, reg + AK4114_REG_TXCSB0, chip->txcsb[reg]);

 reg_write(chip, AK4114_REG_PWRDN, old | AK4114_RST | AK4114_PWN);
}
