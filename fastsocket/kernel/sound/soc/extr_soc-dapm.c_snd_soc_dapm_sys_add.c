
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int dev_attr_dapm_widget ;
 int device_create_file (struct device*,int *) ;

int snd_soc_dapm_sys_add(struct device *dev)
{
 return device_create_file(dev, &dev_attr_dapm_widget);
}
