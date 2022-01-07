
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ak4117 {unsigned char* regmap; int private_data; int (* write ) (int ,unsigned char,unsigned char) ;} ;


 int stub1 (int ,unsigned char,unsigned char) ;

__attribute__((used)) static void reg_write(struct ak4117 *ak4117, unsigned char reg, unsigned char val)
{
 ak4117->write(ak4117->private_data, reg, val);
 if (reg < sizeof(ak4117->regmap))
  ak4117->regmap[reg] = val;
}
