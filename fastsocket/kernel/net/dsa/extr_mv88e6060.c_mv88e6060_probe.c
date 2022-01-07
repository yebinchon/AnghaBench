
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mii_bus {int dummy; } ;


 int REG_PORT (int ) ;
 int mdiobus_read (struct mii_bus*,int ,int) ;

__attribute__((used)) static char *mv88e6060_probe(struct mii_bus *bus, int sw_addr)
{
 int ret;

 ret = mdiobus_read(bus, REG_PORT(0), 0x03);
 if (ret >= 0) {
  ret &= 0xfff0;
  if (ret == 0x0600)
   return "Marvell 88E6060";
 }

 return ((void*)0);
}
