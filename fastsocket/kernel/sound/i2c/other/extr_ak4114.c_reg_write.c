
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ak4114 {unsigned char* regmap; unsigned char* txcsb; int private_data; int (* write ) (int ,unsigned char,unsigned char) ;} ;


 unsigned char AK4114_REG_INT1_MASK ;
 unsigned char AK4114_REG_TXCSB0 ;
 unsigned char AK4114_REG_TXCSB4 ;
 int stub1 (int ,unsigned char,unsigned char) ;

__attribute__((used)) static void reg_write(struct ak4114 *ak4114, unsigned char reg, unsigned char val)
{
 ak4114->write(ak4114->private_data, reg, val);
 if (reg <= AK4114_REG_INT1_MASK)
  ak4114->regmap[reg] = val;
 else if (reg >= AK4114_REG_TXCSB0 && reg <= AK4114_REG_TXCSB4)
  ak4114->txcsb[reg-AK4114_REG_TXCSB0] = val;
}
