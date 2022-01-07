
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 scalar_t__ dev_is_class (struct device*,char*) ;
 struct device* device_find_child (struct device*,char*,scalar_t__ (*) (struct device*,char*)) ;
 int get_device (struct device*) ;

__attribute__((used)) static struct device *dev_find_class(struct device *parent, char *class)
{
 if (dev_is_class(parent, class)) {
  get_device(parent);
  return parent;
 }

 return device_find_child(parent, class, dev_is_class);
}
