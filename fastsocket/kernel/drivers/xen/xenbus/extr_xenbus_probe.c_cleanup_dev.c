
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xenbus_device {char* nodename; } ;
struct xb_find_info {char* nodename; struct xenbus_device* dev; } ;
struct device {int dummy; } ;


 int DPRINTK (char*,char*) ;
 int get_device (struct device*) ;
 int strlen (char*) ;
 scalar_t__ strncmp (char*,char*,int) ;
 struct xenbus_device* to_xenbus_device (struct device*) ;

__attribute__((used)) static int cleanup_dev(struct device *dev, void *data)
{
 struct xenbus_device *xendev = to_xenbus_device(dev);
 struct xb_find_info *info = data;
 int len = strlen(info->nodename);

 DPRINTK("%s", info->nodename);


 if (strncmp(xendev->nodename, info->nodename, len))
  return 0;


 if ((strlen(xendev->nodename) > len) && (xendev->nodename[len] != '/'))
  return 0;

 info->dev = xendev;
 get_device(dev);
 return 1;
}
