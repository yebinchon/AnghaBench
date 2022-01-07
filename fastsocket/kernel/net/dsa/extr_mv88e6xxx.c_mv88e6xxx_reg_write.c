
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct mv88e6xxx_priv_state {int smi_mutex; } ;
struct dsa_switch {TYPE_1__* pd; int master_mii_bus; } ;
struct TYPE_2__ {int sw_addr; } ;


 int __mv88e6xxx_reg_write (int ,int ,int,int,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int mv88e6xxx_reg_write(struct dsa_switch *ds, int addr, int reg, u16 val)
{
 struct mv88e6xxx_priv_state *ps = (void *)(ds + 1);
 int ret;

 mutex_lock(&ps->smi_mutex);
 ret = __mv88e6xxx_reg_write(ds->master_mii_bus,
        ds->pd->sw_addr, addr, reg, val);
 mutex_unlock(&ps->smi_mutex);

 return ret;
}
