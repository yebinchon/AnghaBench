
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct cbaf {int cdid; } ;
typedef int ssize_t ;
typedef int pr_cdid ;


 int PAGE_SIZE ;
 int WUSB_CKHDID_STRSIZE ;
 int ckhdid_printf (char*,int,int *) ;
 int scnprintf (char*,int ,char*,char*) ;
 struct usb_interface* to_usb_interface (struct device*) ;
 struct cbaf* usb_get_intfdata (struct usb_interface*) ;

__attribute__((used)) static ssize_t cbaf_wusb_cdid_show(struct device *dev,
       struct device_attribute *attr, char *buf)
{
 struct usb_interface *iface = to_usb_interface(dev);
 struct cbaf *cbaf = usb_get_intfdata(iface);
 char pr_cdid[WUSB_CKHDID_STRSIZE];

 ckhdid_printf(pr_cdid, sizeof(pr_cdid), &cbaf->cdid);
 return scnprintf(buf, PAGE_SIZE, "%s\n", pr_cdid);
}
