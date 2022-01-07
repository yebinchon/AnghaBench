
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 int gbe_mem_size ;
 int snprintf (char*,int ,char*,int) ;

__attribute__((used)) static ssize_t gbefb_show_memsize(struct device *dev, struct device_attribute *attr, char *buf)
{
 return snprintf(buf, PAGE_SIZE, "%d\n", gbe_mem_size);
}
