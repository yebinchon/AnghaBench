
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct w1_master {TYPE_1__* bus_master; } ;
struct TYPE_2__ {int data; int (* touch_bit ) (int ,int) ;} ;


 int stub1 (int ,int) ;
 int w1_read_bit (struct w1_master*) ;
 int w1_write_bit (struct w1_master*,int ) ;

__attribute__((used)) static u8 w1_touch_bit(struct w1_master *dev, int bit)
{
 if (dev->bus_master->touch_bit)
  return dev->bus_master->touch_bit(dev->bus_master->data, bit);
 else if (bit)
  return w1_read_bit(dev);
 else {
  w1_write_bit(dev, 0);
  return 0;
 }
}
