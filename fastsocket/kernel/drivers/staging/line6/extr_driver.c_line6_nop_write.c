
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;



ssize_t line6_nop_write(struct device *dev, struct device_attribute *attr,
   const char *buf, size_t count)
{
 return count;
}
