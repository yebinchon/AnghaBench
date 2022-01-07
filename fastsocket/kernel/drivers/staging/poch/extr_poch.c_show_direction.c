
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct channel_info {scalar_t__ dir; } ;
typedef int ssize_t ;


 struct channel_info* dev_get_drvdata (struct device*) ;
 int sprintf (char*,char*,char*) ;

__attribute__((used)) static ssize_t show_direction(struct device *dev,
         struct device_attribute *attr, char *buf)
{
 struct channel_info *channel = dev_get_drvdata(dev);
 int len;

 len = sprintf(buf, "%s\n", (channel->dir ? "tx" : "rx"));
 return len;
}
