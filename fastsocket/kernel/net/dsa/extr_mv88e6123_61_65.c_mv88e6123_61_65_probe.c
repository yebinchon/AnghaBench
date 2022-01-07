
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mii_bus {int dummy; } ;


 int REG_PORT (int ) ;
 int __mv88e6xxx_reg_read (struct mii_bus*,int,int ,int) ;

__attribute__((used)) static char *mv88e6123_61_65_probe(struct mii_bus *bus, int sw_addr)
{
 int ret;

 ret = __mv88e6xxx_reg_read(bus, sw_addr, REG_PORT(0), 0x03);
 if (ret >= 0) {
  ret &= 0xfff0;
  if (ret == 0x1210)
   return "Marvell 88E6123";
  if (ret == 0x1610)
   return "Marvell 88E6161";
  if (ret == 0x1650)
   return "Marvell 88E6165";
 }

 return ((void*)0);
}
