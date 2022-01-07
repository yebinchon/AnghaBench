
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mii_bus {int dummy; } ;


 int ETIMEDOUT ;
 int mdiobus_read (struct mii_bus*,int,int ) ;

__attribute__((used)) static int mv88e6xxx_reg_wait_ready(struct mii_bus *bus, int sw_addr)
{
 int ret;
 int i;

 for (i = 0; i < 16; i++) {
  ret = mdiobus_read(bus, sw_addr, 0);
  if (ret < 0)
   return ret;

  if ((ret & 0x8000) == 0)
   return 0;
 }

 return -ETIMEDOUT;
}
