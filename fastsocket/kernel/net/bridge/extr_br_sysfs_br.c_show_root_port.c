
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int root_port; } ;


 int sprintf (char*,char*,int) ;
 TYPE_1__* to_bridge (struct device*) ;

__attribute__((used)) static ssize_t show_root_port(struct device *d, struct device_attribute *attr,
         char *buf)
{
 return sprintf(buf, "%d\n", to_bridge(d)->root_port);
}
