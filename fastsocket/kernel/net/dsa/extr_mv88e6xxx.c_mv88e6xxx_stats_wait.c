
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dsa_switch {int dummy; } ;


 int ETIMEDOUT ;
 int REG_GLOBAL ;
 int REG_READ (int ,int) ;

__attribute__((used)) static int mv88e6xxx_stats_wait(struct dsa_switch *ds)
{
 int ret;
 int i;

 for (i = 0; i < 10; i++) {
  ret = REG_READ(REG_GLOBAL, 0x1d);
  if ((ret & 0x8000) == 0)
   return 0;
 }

 return -ETIMEDOUT;
}
