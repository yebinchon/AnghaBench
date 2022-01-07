
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct langwell_udc {TYPE_1__* driver; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int function; } ;


 scalar_t__ PAGE_SIZE ;
 int scnprintf (char*,scalar_t__,char*,int ) ;
 scalar_t__ strlen (int ) ;
 struct langwell_udc* the_controller ;

__attribute__((used)) static ssize_t show_function(struct device *_dev,
  struct device_attribute *attr, char *buf)
{
 struct langwell_udc *dev = the_controller;

 if (!dev->driver || !dev->driver->function
   || strlen(dev->driver->function) > PAGE_SIZE)
  return 0;

 return scnprintf(buf, PAGE_SIZE, "%s\n", dev->driver->function);
}
