
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct dsa_switch {TYPE_3__* master_mii_bus; TYPE_2__* slave_mii_bus; TYPE_1__* pd; } ;
struct TYPE_6__ {char* id; int dev; } ;
struct TYPE_5__ {char* name; int * parent; int id; int write; int read; void* priv; } ;
struct TYPE_4__ {int sw_addr; } ;


 int MII_BUS_ID_SIZE ;
 int dsa_slave_phy_read ;
 int dsa_slave_phy_write ;
 int snprintf (int ,int ,char*,char*,int) ;

void dsa_slave_mii_bus_init(struct dsa_switch *ds)
{
 ds->slave_mii_bus->priv = (void *)ds;
 ds->slave_mii_bus->name = "dsa slave smi";
 ds->slave_mii_bus->read = dsa_slave_phy_read;
 ds->slave_mii_bus->write = dsa_slave_phy_write;
 snprintf(ds->slave_mii_bus->id, MII_BUS_ID_SIZE, "%s:%.2x",
   ds->master_mii_bus->id, ds->pd->sw_addr);
 ds->slave_mii_bus->parent = &ds->master_mii_bus->dev;
}
