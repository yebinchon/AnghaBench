
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct dsa_switch {int dummy; } ;


 int mv88e6060_port_to_phy_addr (int) ;
 int reg_write (struct dsa_switch*,int,int,int ) ;

__attribute__((used)) static int
mv88e6060_phy_write(struct dsa_switch *ds, int port, int regnum, u16 val)
{
 int addr;

 addr = mv88e6060_port_to_phy_addr(port);
 if (addr == -1)
  return 0xffff;

 return reg_write(ds, addr, regnum, val);
}
