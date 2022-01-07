
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dsa_switch {int dummy; } ;


 int REG_GLOBAL ;
 int REG_WRITE (int ,int,int) ;
 int mv88e6xxx_stats_wait (struct dsa_switch*) ;

__attribute__((used)) static int mv88e6xxx_stats_snapshot(struct dsa_switch *ds, int port)
{
 int ret;




 REG_WRITE(REG_GLOBAL, 0x1d, 0xdc00 | port);




 ret = mv88e6xxx_stats_wait(ds);
 if (ret < 0)
  return ret;

 return 0;
}
