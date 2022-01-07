
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sysdev_attribute {int dummy; } ;
struct sys_device {int dummy; } ;
typedef int ssize_t ;


 int sprintf (char*,char*) ;

__attribute__((used)) static ssize_t read_scan_unevictable_node(struct sys_device *dev,
       struct sysdev_attribute *attr,
       char *buf)
{
 return sprintf(buf, "0\n");
}
