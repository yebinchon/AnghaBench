
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct snd_usb_midi_in_endpoint {int dummy; } ;


 int* snd_usbmidi_cin_length ;
 int snd_usbmidi_input_data (struct snd_usb_midi_in_endpoint*,int,int*,int) ;

__attribute__((used)) static void snd_usbmidi_standard_input(struct snd_usb_midi_in_endpoint* ep,
           uint8_t* buffer, int buffer_length)
{
 int i;

 for (i = 0; i + 3 < buffer_length; i += 4)
  if (buffer[i] != 0) {
   int cable = buffer[i] >> 4;
   int length = snd_usbmidi_cin_length[buffer[i] & 0x0f];
   snd_usbmidi_input_data(ep, cable, &buffer[i + 1], length);
  }
}
