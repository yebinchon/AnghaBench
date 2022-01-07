
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_host_interface {int dummy; } ;
struct snd_usb_audio {int dev; } ;
struct TYPE_2__ {int bInterval; } ;




 TYPE_1__* get_endpoint (struct usb_host_interface*,int ) ;
 int snd_usb_get_speed (int ) ;

unsigned char snd_usb_parse_datainterval(struct snd_usb_audio *chip,
      struct usb_host_interface *alts)
{
 switch (snd_usb_get_speed(chip->dev)) {
 case 129:
 case 128:
  if (get_endpoint(alts, 0)->bInterval >= 1 &&
      get_endpoint(alts, 0)->bInterval <= 4)
   return get_endpoint(alts, 0)->bInterval - 1;
  break;
 default:
  break;
 }
 return 0;
}
