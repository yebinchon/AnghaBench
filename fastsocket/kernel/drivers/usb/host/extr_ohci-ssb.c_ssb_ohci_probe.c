
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct ssb_device_id {int dummy; } ;
struct ssb_device {TYPE_1__* bus; } ;
struct TYPE_2__ {int chip_id; } ;


 int ENODEV ;
 int ssb_ohci_attach (struct ssb_device*) ;
 scalar_t__ usb_disabled () ;

__attribute__((used)) static int ssb_ohci_probe(struct ssb_device *dev,
  const struct ssb_device_id *id)
{
 int err;
 u16 chipid_top;


 chipid_top = (dev->bus->chip_id & 0xFF00);
 if (chipid_top != 0x4700 && chipid_top != 0x5300)
  return -ENODEV;



 if (usb_disabled())
  return -ENODEV;






 err = ssb_ohci_attach(dev);

 return err;
}
