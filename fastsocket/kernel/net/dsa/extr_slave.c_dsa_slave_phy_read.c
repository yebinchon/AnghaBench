
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mii_bus {struct dsa_switch* priv; } ;
struct dsa_switch {int phys_port_mask; TYPE_1__* drv; } ;
struct TYPE_2__ {int (* phy_read ) (struct dsa_switch*,int,int) ;} ;


 int stub1 (struct dsa_switch*,int,int) ;

__attribute__((used)) static int dsa_slave_phy_read(struct mii_bus *bus, int addr, int reg)
{
 struct dsa_switch *ds = bus->priv;

 if (ds->phys_port_mask & (1 << addr))
  return ds->drv->phy_read(ds, addr, reg);

 return 0xffff;
}
