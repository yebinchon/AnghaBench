
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 int sscanf (char const*,char*,unsigned long*) ;
 unsigned long usbip_debug_flag ;

__attribute__((used)) static ssize_t store_flag(struct device *dev, struct device_attribute *attr,
  const char *buf, size_t count)
{
 unsigned long flag;

 sscanf(buf, "%lx", &flag);
 usbip_debug_flag = flag;

 return count;
}
