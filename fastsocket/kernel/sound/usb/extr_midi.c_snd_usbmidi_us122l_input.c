
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct snd_usb_midi_in_endpoint {int dummy; } ;


 int snd_usbmidi_input_data (struct snd_usb_midi_in_endpoint*,int ,int*,int) ;

__attribute__((used)) static void snd_usbmidi_us122l_input(struct snd_usb_midi_in_endpoint *ep,
         uint8_t *buffer, int buffer_length)
{
 if (buffer_length != 9)
  return;
 buffer_length = 8;
 while (buffer_length && buffer[buffer_length - 1] == 0xFD)
  buffer_length--;
 if (buffer_length)
  snd_usbmidi_input_data(ep, 0, buffer, buffer_length);
}
