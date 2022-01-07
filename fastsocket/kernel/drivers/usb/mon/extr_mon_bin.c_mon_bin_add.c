
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_bus {unsigned int busnum; int * controller; } ;
struct mon_bus {struct device* classdev; } ;
struct device {int dummy; } ;


 scalar_t__ IS_ERR (struct device*) ;
 int MAJOR (int ) ;
 int MKDEV (int ,unsigned int) ;
 unsigned int MON_BIN_MAX_MINOR ;
 struct device* device_create (int ,int *,int ,int *,char*,unsigned int) ;
 int mon_bin_class ;
 int mon_bin_dev0 ;

int mon_bin_add(struct mon_bus *mbus, const struct usb_bus *ubus)
{
 struct device *dev;
 unsigned minor = ubus? ubus->busnum: 0;

 if (minor >= MON_BIN_MAX_MINOR)
  return 0;

 dev = device_create(mon_bin_class, ubus ? ubus->controller : ((void*)0),
       MKDEV(MAJOR(mon_bin_dev0), minor), ((void*)0),
       "usbmon%d", minor);
 if (IS_ERR(dev))
  return 0;

 mbus->classdev = dev;
 return 1;
}
