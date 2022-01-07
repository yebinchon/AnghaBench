
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct w1_master {TYPE_1__* bus_master; } ;
struct TYPE_2__ {int (* read_block ) (int ,int*,int) ;int data; } ;


 int stub1 (int ,int*,int) ;
 int w1_read_8 (struct w1_master*) ;

u8 w1_read_block(struct w1_master *dev, u8 *buf, int len)
{
 int i;
 u8 ret;

 if (dev->bus_master->read_block)
  ret = dev->bus_master->read_block(dev->bus_master->data, buf, len);
 else {
  for (i = 0; i < len; ++i)
   buf[i] = w1_read_8(dev);
  ret = len;
 }

 return ret;
}
