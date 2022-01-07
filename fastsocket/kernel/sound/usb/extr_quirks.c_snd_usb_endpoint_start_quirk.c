
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct snd_usb_endpoint {scalar_t__ type; int skip_packets; TYPE_3__* chip; } ;
struct TYPE_6__ {TYPE_2__* dev; } ;
struct TYPE_4__ {int idVendor; } ;
struct TYPE_5__ {TYPE_1__ descriptor; } ;


 scalar_t__ SND_USB_ENDPOINT_TYPE_SYNC ;
 int le16_to_cpu (int ) ;

void snd_usb_endpoint_start_quirk(struct snd_usb_endpoint *ep)
{




 if ((le16_to_cpu(ep->chip->dev->descriptor.idVendor) == 0x23ba) &&
     ep->type == SND_USB_ENDPOINT_TYPE_SYNC)
  ep->skip_packets = 4;
}
