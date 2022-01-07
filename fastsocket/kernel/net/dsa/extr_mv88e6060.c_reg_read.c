
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dsa_switch {int master_mii_bus; } ;


 int mdiobus_read (int ,int,int) ;

__attribute__((used)) static int reg_read(struct dsa_switch *ds, int addr, int reg)
{
 return mdiobus_read(ds->master_mii_bus, addr, reg);
}
