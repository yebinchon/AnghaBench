
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct comedi_device {struct device* hw_dev; } ;


 int BUG_ON (int ) ;
 struct device* get_device (struct device*) ;
 int put_device (struct device*) ;

__attribute__((used)) static inline void comedi_set_hw_dev(struct comedi_device *dev,
         struct device *hw_dev)
{
 if (dev->hw_dev)
  put_device(dev->hw_dev);

 dev->hw_dev = hw_dev;
 if (dev->hw_dev) {
  dev->hw_dev = get_device(dev->hw_dev);
  BUG_ON(dev->hw_dev == ((void*)0));
 }
}
