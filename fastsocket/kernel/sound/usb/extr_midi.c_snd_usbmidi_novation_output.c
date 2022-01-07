
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct urb {int* transfer_buffer; int transfer_buffer_length; } ;
struct snd_usb_midi_out_endpoint {TYPE_1__* ports; scalar_t__ max_transfer; } ;
struct TYPE_2__ {scalar_t__ active; int substream; } ;


 int snd_rawmidi_transmit (int ,int*,scalar_t__) ;

__attribute__((used)) static void snd_usbmidi_novation_output(struct snd_usb_midi_out_endpoint* ep,
     struct urb *urb)
{
 uint8_t* transfer_buffer;
 int count;

 if (!ep->ports[0].active)
  return;
 transfer_buffer = urb->transfer_buffer;
 count = snd_rawmidi_transmit(ep->ports[0].substream,
         &transfer_buffer[2],
         ep->max_transfer - 2);
 if (count < 1) {
  ep->ports[0].active = 0;
  return;
 }
 transfer_buffer[0] = 0;
 transfer_buffer[1] = count;
 urb->transfer_buffer_length = 2 + count;
}
