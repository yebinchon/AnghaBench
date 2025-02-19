
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uwb_mac_addr {int * data; } ;
struct TYPE_2__ {struct uwb_mac_addr mac_addr; int dev; } ;
struct uwb_rc {TYPE_1__ uwb_dev; } ;
struct uwb_dev {struct uwb_rc* rc; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int EINVAL ;
 int dev_err (int *,char*,char const*) ;
 scalar_t__ is_multicast_ether_addr (int *) ;
 int sscanf (char const*,char*,int *,int *,int *,int *,int *,int *) ;
 struct uwb_dev* to_uwb_dev (struct device*) ;
 int uwb_rc_mac_addr_set (struct uwb_rc*,struct uwb_mac_addr*) ;

__attribute__((used)) static ssize_t uwb_rc_mac_addr_store(struct device *dev,
         struct device_attribute *attr,
         const char *buf, size_t size)
{
 struct uwb_dev *uwb_dev = to_uwb_dev(dev);
 struct uwb_rc *rc = uwb_dev->rc;
 struct uwb_mac_addr addr;
 ssize_t result;

 result = sscanf(buf, "%hhx:%hhx:%hhx:%hhx:%hhx:%hhx\n",
   &addr.data[0], &addr.data[1], &addr.data[2],
   &addr.data[3], &addr.data[4], &addr.data[5]);
 if (result != 6) {
  result = -EINVAL;
  goto out;
 }
 if (is_multicast_ether_addr(addr.data)) {
  dev_err(&rc->uwb_dev.dev, "refusing to set multicast "
   "MAC address %s\n", buf);
  result = -EINVAL;
  goto out;
 }
 result = uwb_rc_mac_addr_set(rc, &addr);
 if (result == 0)
  rc->uwb_dev.mac_addr = addr;
out:
 return result < 0 ? result : size;
}
