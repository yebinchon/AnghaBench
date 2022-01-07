
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dsa_switch {int dummy; } ;


 int ETIMEDOUT ;
 int REG_GLOBAL ;
 int REG_PORT (int) ;
 int REG_READ (int ,int) ;
 int REG_WRITE (int ,int,int) ;
 int msleep (int) ;

__attribute__((used)) static int mv88e6131_switch_reset(struct dsa_switch *ds)
{
 int i;
 int ret;




 for (i = 0; i < 11; i++) {
  ret = REG_READ(REG_PORT(i), 0x04);
  REG_WRITE(REG_PORT(i), 0x04, ret & 0xfffc);
 }




 msleep(2);




 REG_WRITE(REG_GLOBAL, 0x04, 0xc400);




 for (i = 0; i < 1000; i++) {
  ret = REG_READ(REG_GLOBAL, 0x00);
  if ((ret & 0xc800) == 0xc800)
   break;

  msleep(1);
 }
 if (i == 1000)
  return -ETIMEDOUT;

 return 0;
}
