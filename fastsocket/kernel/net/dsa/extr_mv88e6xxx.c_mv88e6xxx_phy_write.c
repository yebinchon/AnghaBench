
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct dsa_switch {int dummy; } ;


 int mv88e6xxx_reg_write (struct dsa_switch*,int,int,int ) ;

int mv88e6xxx_phy_write(struct dsa_switch *ds, int addr, int regnum, u16 val)
{
 if (addr >= 0)
  return mv88e6xxx_reg_write(ds, addr, regnum, val);
 return 0;
}
