
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int pod_send_retrieve_command (struct device*,char const*,size_t,int,int) ;

__attribute__((used)) static ssize_t pod_set_retrieve_channel(struct device *dev,
     struct device_attribute *attr,
     const char *buf, size_t count)
{
 return pod_send_retrieve_command(dev, buf, count, 0x0000, 0x00c0);
}
