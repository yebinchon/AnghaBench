
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct urb {int dev; } ;
struct snd_usb_midi_in_endpoint {TYPE_1__* umidi; struct urb** urbs; } ;
struct TYPE_2__ {int dev; } ;


 int GFP_KERNEL ;
 unsigned int INPUT_URBS ;
 int snd_usbmidi_submit_urb (struct urb*,int ) ;

__attribute__((used)) static void snd_usbmidi_input_start_ep(struct snd_usb_midi_in_endpoint* ep)
{
 unsigned int i;

 if (!ep)
  return;
 for (i = 0; i < INPUT_URBS; ++i) {
  struct urb* urb = ep->urbs[i];
  urb->dev = ep->umidi->dev;
  snd_usbmidi_submit_urb(urb, GFP_KERNEL);
 }
}
