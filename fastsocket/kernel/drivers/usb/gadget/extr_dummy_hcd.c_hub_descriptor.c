
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int* DeviceRemovable; } ;
struct TYPE_3__ {TYPE_2__ hs; } ;
struct usb_hub_descriptor {int bDescriptorType; int bDescLength; int bNbrPorts; TYPE_1__ u; int wHubCharacteristics; } ;


 int cpu_to_le16 (int) ;
 int memset (struct usb_hub_descriptor*,int ,int) ;

__attribute__((used)) static inline void
hub_descriptor (struct usb_hub_descriptor *desc)
{
 memset (desc, 0, sizeof *desc);
 desc->bDescriptorType = 0x29;
 desc->bDescLength = 9;
 desc->wHubCharacteristics = cpu_to_le16(0x0001);
 desc->bNbrPorts = 1;
 desc->u.hs.DeviceRemovable[0] = 0xff;
 desc->u.hs.DeviceRemovable[1] = 0xff;
}
