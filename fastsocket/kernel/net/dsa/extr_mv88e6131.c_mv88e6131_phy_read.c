
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dsa_switch {int dummy; } ;


 int mv88e6131_port_to_phy_addr (int) ;
 int mv88e6xxx_phy_read_ppu (struct dsa_switch*,int,int) ;

__attribute__((used)) static int
mv88e6131_phy_read(struct dsa_switch *ds, int port, int regnum)
{
 int addr = mv88e6131_port_to_phy_addr(port);
 return mv88e6xxx_phy_read_ppu(ds, addr, regnum);
}
