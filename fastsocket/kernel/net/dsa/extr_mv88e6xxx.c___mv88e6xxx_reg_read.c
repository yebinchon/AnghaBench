
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mii_bus {int dummy; } ;


 int mdiobus_read (struct mii_bus*,int,int) ;
 int mdiobus_write (struct mii_bus*,int,int ,int) ;
 int mv88e6xxx_reg_wait_ready (struct mii_bus*,int) ;

int __mv88e6xxx_reg_read(struct mii_bus *bus, int sw_addr, int addr, int reg)
{
 int ret;

 if (sw_addr == 0)
  return mdiobus_read(bus, addr, reg);




 ret = mv88e6xxx_reg_wait_ready(bus, sw_addr);
 if (ret < 0)
  return ret;




 ret = mdiobus_write(bus, sw_addr, 0, 0x9800 | (addr << 5) | reg);
 if (ret < 0)
  return ret;




 ret = mv88e6xxx_reg_wait_ready(bus, sw_addr);
 if (ret < 0)
  return ret;




 ret = mdiobus_read(bus, sw_addr, 1);
 if (ret < 0)
  return ret;

 return ret & 0xffff;
}
