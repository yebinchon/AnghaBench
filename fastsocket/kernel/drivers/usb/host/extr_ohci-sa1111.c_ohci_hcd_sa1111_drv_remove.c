
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_hcd {int dummy; } ;
struct sa1111_dev {int dummy; } ;


 struct usb_hcd* sa1111_get_drvdata (struct sa1111_dev*) ;
 int usb_hcd_sa1111_remove (struct usb_hcd*,struct sa1111_dev*) ;

__attribute__((used)) static int ohci_hcd_sa1111_drv_remove(struct sa1111_dev *dev)
{
 struct usb_hcd *hcd = sa1111_get_drvdata(dev);

 usb_hcd_sa1111_remove(hcd, dev);
 return 0;
}
