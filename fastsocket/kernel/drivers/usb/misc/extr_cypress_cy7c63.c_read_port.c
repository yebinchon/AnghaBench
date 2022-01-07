
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_interface {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct cypress {int* port; TYPE_1__* udev; } ;
typedef int ssize_t ;
struct TYPE_2__ {int dev; } ;


 int CYPRESS_READ_PORT ;
 int dev_dbg (int *,char*,int) ;
 int sprintf (char*,char*,int) ;
 struct usb_interface* to_usb_interface (struct device*) ;
 struct cypress* usb_get_intfdata (struct usb_interface*) ;
 int vendor_command (struct cypress*,int ,int,int ) ;

__attribute__((used)) static ssize_t read_port(struct device *dev, struct device_attribute *attr,
    char *buf, int port_num, int read_id)
{
 int result = 0;

 struct usb_interface *intf = to_usb_interface(dev);
 struct cypress *cyp = usb_get_intfdata(intf);

 dev_dbg(&cyp->udev->dev, "READ_PORT%d called\n", port_num);

 result = vendor_command(cyp, CYPRESS_READ_PORT, read_id, 0);

 dev_dbg(&cyp->udev->dev, "Result of vendor_command: %d\n\n", result);

 return sprintf(buf, "%d", cyp->port[port_num]);
}
