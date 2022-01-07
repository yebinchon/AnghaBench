
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dsa_switch {int dummy; } ;


 int mv88e6xxx_reg_read (struct dsa_switch*,int,int) ;

int mv88e6xxx_phy_read(struct dsa_switch *ds, int addr, int regnum)
{
 if (addr >= 0)
  return mv88e6xxx_reg_read(ds, addr, regnum);
 return 0xffff;
}
