
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xenbus_device {int nodename; } ;
struct xb_find_info {struct xenbus_device* dev; int nodename; } ;
struct device {int dummy; } ;


 int get_device (struct device*) ;
 int strcmp (int ,int ) ;
 struct xenbus_device* to_xenbus_device (struct device*) ;

__attribute__((used)) static int cmp_dev(struct device *dev, void *data)
{
 struct xenbus_device *xendev = to_xenbus_device(dev);
 struct xb_find_info *info = data;

 if (!strcmp(xendev->nodename, info->nodename)) {
  info->dev = xendev;
  get_device(dev);
  return 1;
 }
 return 0;
}
