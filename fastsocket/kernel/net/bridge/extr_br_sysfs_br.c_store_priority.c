
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int set_priority ;
 int store_bridge_parm (struct device*,char const*,size_t,int ) ;

__attribute__((used)) static ssize_t store_priority(struct device *d, struct device_attribute *attr,
          const char *buf, size_t len)
{
 return store_bridge_parm(d, buf, len, set_priority);
}
