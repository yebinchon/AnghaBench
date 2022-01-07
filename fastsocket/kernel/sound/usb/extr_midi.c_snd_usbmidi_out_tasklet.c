
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_usb_midi_out_endpoint {int dummy; } ;


 int snd_usbmidi_do_output (struct snd_usb_midi_out_endpoint*) ;

__attribute__((used)) static void snd_usbmidi_out_tasklet(unsigned long data)
{
 struct snd_usb_midi_out_endpoint* ep = (struct snd_usb_midi_out_endpoint *) data;

 snd_usbmidi_do_output(ep);
}
