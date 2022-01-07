
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;
typedef scalar_t__ __u32 ;


 size_t EINVAL ;
 scalar_t__ VHCI_NPORTS ;
 int sscanf (char const*,char*,scalar_t__*) ;
 int usbip_dbg_vhci_sysfs (char*) ;
 int usbip_uerr (char*,scalar_t__) ;
 int vhci_port_disconnect (scalar_t__) ;

__attribute__((used)) static ssize_t store_detach(struct device *dev, struct device_attribute *attr,
       const char *buf, size_t count)
{
 int err;
 __u32 rhport = 0;

 sscanf(buf, "%u", &rhport);


 if (rhport >= VHCI_NPORTS) {
  usbip_uerr("invalid port %u\n", rhport);
  return -EINVAL;
 }

 err = vhci_port_disconnect(rhport);
 if (err < 0)
  return -EINVAL;

 usbip_dbg_vhci_sysfs("Leave\n");
 return count;
}
