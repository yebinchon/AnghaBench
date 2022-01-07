
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct w1_master {int dummy; } ;


 int w1_pre_write (struct w1_master*) ;
 int w1_touch_bit (struct w1_master*,int) ;

void w1_touch_block(struct w1_master *dev, u8 *buf, int len)
{
 int i, j;
 u8 tmp;

 for (i = 0; i < len; ++i) {
  tmp = 0;
  for (j = 0; j < 8; ++j) {
   if (j == 7)
    w1_pre_write(dev);
   tmp |= w1_touch_bit(dev, (buf[i] >> j) & 0x1) << j;
  }

  buf[i] = tmp;
 }
}
