
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct mii_bus {int dummy; } ;


 int mdiobus_write (struct mii_bus*,int,int,int) ;
 int mv88e6xxx_reg_wait_ready (struct mii_bus*,int) ;

int __mv88e6xxx_reg_write(struct mii_bus *bus, int sw_addr, int addr,
     int reg, u16 val)
{
 int ret;

 if (sw_addr == 0)
  return mdiobus_write(bus, addr, reg, val);




 ret = mv88e6xxx_reg_wait_ready(bus, sw_addr);
 if (ret < 0)
  return ret;




 ret = mdiobus_write(bus, sw_addr, 1, val);
 if (ret < 0)
  return ret;




 ret = mdiobus_write(bus, sw_addr, 0, 0x9400 | (addr << 5) | reg);
 if (ret < 0)
  return ret;




 ret = mv88e6xxx_reg_wait_ready(bus, sw_addr);
 if (ret < 0)
  return ret;

 return 0;
}
