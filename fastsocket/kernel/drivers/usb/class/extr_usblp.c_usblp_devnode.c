
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
typedef int mode_t ;


 int GFP_KERNEL ;
 int dev_name (struct device*) ;
 char* kasprintf (int ,char*,int ) ;

__attribute__((used)) static char *usblp_devnode(struct device *dev, mode_t *mode)
{
 return kasprintf(GFP_KERNEL, "usb/%s", dev_name(dev));
}
