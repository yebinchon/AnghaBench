
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct dsa_switch {int master_mii_bus; } ;


 int mdiobus_write (int ,int,int,int ) ;

__attribute__((used)) static int reg_write(struct dsa_switch *ds, int addr, int reg, u16 val)
{
 return mdiobus_write(ds->master_mii_bus, addr, reg, val);
}
