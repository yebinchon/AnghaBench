
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sa1111_dev {int dummy; } ;


 int ENODEV ;
 int ohci_sa1111_hc_driver ;
 scalar_t__ usb_disabled () ;
 int usb_hcd_sa1111_probe (int *,struct sa1111_dev*) ;

__attribute__((used)) static int ohci_hcd_sa1111_drv_probe(struct sa1111_dev *dev)
{
 int ret;

 if (usb_disabled())
  return -ENODEV;

 ret = usb_hcd_sa1111_probe(&ohci_sa1111_hc_driver, dev);
 return ret;
}
