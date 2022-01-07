
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_mixer_interface {int* audigy2nx_leds; TYPE_1__* chip; } ;
struct TYPE_2__ {scalar_t__ usb_id; int card; } ;


 int ARRAY_SIZE (int *) ;
 scalar_t__ USB_ID (int,int) ;
 int * snd_audigy2nx_controls ;
 int snd_ctl_add (int ,int ) ;
 int snd_ctl_new1 (int *,struct usb_mixer_interface*) ;

__attribute__((used)) static int snd_audigy2nx_controls_create(struct usb_mixer_interface *mixer)
{
 int i, err;

 for (i = 0; i < ARRAY_SIZE(snd_audigy2nx_controls); ++i) {

  if ((mixer->chip->usb_id == USB_ID(0x041e, 0x3042)) && i == 0)
   continue;

  if ((mixer->chip->usb_id == USB_ID(0x041e, 0x30df)) && i == 0)
   continue;
  if (i > 1 &&
   (mixer->chip->usb_id == USB_ID(0x041e, 0x3040) ||
    mixer->chip->usb_id == USB_ID(0x041e, 0x3042) ||
    mixer->chip->usb_id == USB_ID(0x041e, 0x30df) ||
    mixer->chip->usb_id == USB_ID(0x041e, 0x3048)))
   break;
  err = snd_ctl_add(mixer->chip->card,
      snd_ctl_new1(&snd_audigy2nx_controls[i], mixer));
  if (err < 0)
   return err;
 }
 mixer->audigy2nx_leds[1] = 1;
 return 0;
}
