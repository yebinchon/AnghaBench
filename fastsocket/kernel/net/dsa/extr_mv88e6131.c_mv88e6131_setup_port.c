
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct dsa_switch {int dsa_port_mask; int phys_port_mask; } ;


 int REG_PORT (int) ;
 int REG_WRITE (int,int,int) ;
 scalar_t__ dsa_is_cpu_port (struct dsa_switch*,int) ;
 int dsa_upstream_port (struct dsa_switch*) ;

__attribute__((used)) static int mv88e6131_setup_port(struct dsa_switch *ds, int p)
{
 int addr = REG_PORT(p);
 u16 val;







 if (dsa_is_cpu_port(ds, p) || ds->dsa_port_mask & (1 << p))
  REG_WRITE(addr, 0x01, 0x003e);
 else
  REG_WRITE(addr, 0x01, 0x0003);
 val = 0x0433;
 if (p == dsa_upstream_port(ds))
  val |= 0x0104;
 if (ds->dsa_port_mask & (1 << p))
  val |= 0x0100;
 REG_WRITE(addr, 0x04, val);





 REG_WRITE(addr, 0x05, dsa_is_cpu_port(ds, p) ? 0x8000 : 0x0000);







 val = (p & 0xf) << 12;
 if (dsa_is_cpu_port(ds, p))
  val |= ds->phys_port_mask;
 else
  val |= 1 << dsa_upstream_port(ds);
 REG_WRITE(addr, 0x06, val);





 REG_WRITE(addr, 0x07, 0x0000);
 val = 0x0080 | dsa_upstream_port(ds);
 if (p == dsa_upstream_port(ds))
  val |= 0x0040;
 REG_WRITE(addr, 0x08, val);




 REG_WRITE(addr, 0x09, 0x0000);




 REG_WRITE(addr, 0x0a, 0x0000);







 REG_WRITE(addr, 0x0b, 1 << p);





 REG_WRITE(addr, 0x18, 0x3210);





 REG_WRITE(addr, 0x19, 0x7654);

 return 0;
}
