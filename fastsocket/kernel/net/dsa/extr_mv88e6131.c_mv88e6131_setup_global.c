
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct dsa_switch {int index; TYPE_3__* pd; TYPE_2__* dst; } ;
struct TYPE_6__ {int* rtable; } ;
struct TYPE_5__ {TYPE_1__* pd; } ;
struct TYPE_4__ {int nr_chips; } ;


 int REG_GLOBAL ;
 int REG_GLOBAL2 ;
 int REG_WRITE (int ,int,int) ;
 int dsa_upstream_port (struct dsa_switch*) ;
 int mv88e6xxx_config_prio (struct dsa_switch*) ;

__attribute__((used)) static int mv88e6131_setup_global(struct dsa_switch *ds)
{
 int ret;
 int i;







 REG_WRITE(REG_GLOBAL, 0x04, 0x4400);






 REG_WRITE(REG_GLOBAL, 0x0a, 0x0148);




 ret = mv88e6xxx_config_prio(ds);
 if (ret < 0)
  return ret;




 REG_WRITE(REG_GLOBAL, 0x19, 0x8100);






 REG_WRITE(REG_GLOBAL, 0x1a, (dsa_upstream_port(ds) * 0x1100) | 0x00f0);





 REG_WRITE(REG_GLOBAL, 0x1c, 0xe000 | (ds->index & 0x1f));





 REG_WRITE(REG_GLOBAL2, 0x03, 0xffff);







 REG_WRITE(REG_GLOBAL2, 0x05, 0x00ff);




 for (i = 0; i < 32; i++) {
  int nexthop;

  nexthop = 0x1f;
  if (i != ds->index && i < ds->dst->pd->nr_chips)
   nexthop = ds->pd->rtable[i] & 0x1f;

  REG_WRITE(REG_GLOBAL2, 0x06, 0x8000 | (i << 8) | nexthop);
 }




 for (i = 0; i < 8; i++)
  REG_WRITE(REG_GLOBAL2, 0x07, 0x8000 | (i << 12) | 0x7ff);




 for (i = 0; i < 16; i++)
  REG_WRITE(REG_GLOBAL2, 0x08, 0x8000 | (i << 11));





 REG_WRITE(REG_GLOBAL2, 0x0f, 0x00ff);

 return 0;
}
