
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dsa_switch {int phys_port_mask; TYPE_1__* dst; } ;
struct TYPE_2__ {int cpu_port; } ;


 int REG_PORT (int) ;
 int REG_WRITE (int,int,int) ;
 scalar_t__ dsa_is_cpu_port (struct dsa_switch*,int) ;

__attribute__((used)) static int mv88e6060_setup_port(struct dsa_switch *ds, int p)
{
 int addr = REG_PORT(p);







 REG_WRITE(addr, 0x04, dsa_is_cpu_port(ds, p) ? 0x4103 : 0x0003);







 REG_WRITE(addr, 0x06,
   ((p & 0xf) << 12) |
    (dsa_is_cpu_port(ds, p) ?
    ds->phys_port_mask :
    (1 << ds->dst->cpu_port)));







 REG_WRITE(addr, 0x0b, 1 << p);

 return 0;
}
