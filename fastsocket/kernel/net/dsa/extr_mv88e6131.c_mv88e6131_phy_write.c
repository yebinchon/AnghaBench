
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct dsa_switch {int dummy; } ;


 int mv88e6131_port_to_phy_addr (int) ;
 int mv88e6xxx_phy_write_ppu (struct dsa_switch*,int,int,int ) ;

__attribute__((used)) static int
mv88e6131_phy_write(struct dsa_switch *ds,
         int port, int regnum, u16 val)
{
 int addr = mv88e6131_port_to_phy_addr(port);
 return mv88e6xxx_phy_write_ppu(ds, addr, regnum, val);
}
