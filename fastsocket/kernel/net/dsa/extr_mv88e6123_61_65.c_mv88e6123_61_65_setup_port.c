
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct dsa_switch {int dsa_port_mask; int phys_port_mask; TYPE_1__* dst; } ;
struct TYPE_2__ {scalar_t__ tag_protocol; } ;


 int ETH_P_EDSA ;
 int REG_PORT (int) ;
 int REG_WRITE (int,int,int) ;
 scalar_t__ dsa_is_cpu_port (struct dsa_switch*,int) ;
 int dsa_upstream_port (struct dsa_switch*) ;
 scalar_t__ htons (int) ;

__attribute__((used)) static int mv88e6123_61_65_setup_port(struct dsa_switch *ds, int p)
{
 int addr = REG_PORT(p);
 u16 val;







 if (dsa_is_cpu_port(ds, p) || ds->dsa_port_mask & (1 << p))
  REG_WRITE(addr, 0x01, 0x003e);
 else
  REG_WRITE(addr, 0x01, 0x0003);






 REG_WRITE(addr, 0x02, 0x0000);
 val = 0x0433;
 if (dsa_is_cpu_port(ds, p)) {
  if (ds->dst->tag_protocol == htons(ETH_P_EDSA))
   val |= 0x3300;
  else
   val |= 0x0100;
 }
 if (ds->dsa_port_mask & (1 << p))
  val |= 0x0100;
 if (p == dsa_upstream_port(ds))
  val |= 0x000c;
 REG_WRITE(addr, 0x04, val);





 REG_WRITE(addr, 0x05, dsa_is_cpu_port(ds, p) ? 0x8000 : 0x0000);







 val = (p & 0xf) << 12;
 if (dsa_is_cpu_port(ds, p))
  val |= ds->phys_port_mask;
 else
  val |= 1 << dsa_upstream_port(ds);
 REG_WRITE(addr, 0x06, val);





 REG_WRITE(addr, 0x07, 0x0000);
 REG_WRITE(addr, 0x08, 0x2080);




 REG_WRITE(addr, 0x09, 0x0001);




 REG_WRITE(addr, 0x0a, 0x0000);







 REG_WRITE(addr, 0x0b, 1 << p);





 REG_WRITE(addr, 0x0c, 0x0000);




 REG_WRITE(addr, 0x0d, 0x0000);




 REG_WRITE(addr, 0x0f, ETH_P_EDSA);





 REG_WRITE(addr, 0x18, 0x3210);





 REG_WRITE(addr, 0x19, 0x7654);

 return 0;
}
