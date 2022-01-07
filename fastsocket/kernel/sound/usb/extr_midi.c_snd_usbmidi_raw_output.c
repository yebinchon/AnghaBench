
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct urb {int transfer_buffer_length; int transfer_buffer; } ;
struct snd_usb_midi_out_endpoint {TYPE_1__* ports; int max_transfer; } ;
struct TYPE_2__ {scalar_t__ active; int substream; } ;


 int snd_rawmidi_transmit (int ,int ,int ) ;

__attribute__((used)) static void snd_usbmidi_raw_output(struct snd_usb_midi_out_endpoint* ep,
       struct urb *urb)
{
 int count;

 if (!ep->ports[0].active)
  return;
 count = snd_rawmidi_transmit(ep->ports[0].substream,
         urb->transfer_buffer,
         ep->max_transfer);
 if (count < 1) {
  ep->ports[0].active = 0;
  return;
 }
 urb->transfer_buffer_length = count;
}
