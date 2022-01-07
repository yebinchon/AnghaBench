
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_usb_midi_out_endpoint {int dummy; } ;


 int kfree (struct snd_usb_midi_out_endpoint*) ;
 int snd_usbmidi_out_endpoint_clear (struct snd_usb_midi_out_endpoint*) ;

__attribute__((used)) static void snd_usbmidi_out_endpoint_delete(struct snd_usb_midi_out_endpoint *ep)
{
 snd_usbmidi_out_endpoint_clear(ep);
 kfree(ep);
}
