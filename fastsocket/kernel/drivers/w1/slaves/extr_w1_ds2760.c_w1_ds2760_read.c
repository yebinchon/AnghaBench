
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int w1_ds2760_io (struct device*,char*,int,size_t,int ) ;

int w1_ds2760_read(struct device *dev, char *buf, int addr, size_t count)
{
 return w1_ds2760_io(dev, buf, addr, count, 0);
}
