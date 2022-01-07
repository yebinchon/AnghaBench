
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_usb_midi_in_endpoint {TYPE_1__** urbs; int umidi; } ;
struct TYPE_2__ {int transfer_buffer_length; } ;


 unsigned int INPUT_URBS ;
 int free_urb_and_buffer (int ,TYPE_1__*,int ) ;
 int kfree (struct snd_usb_midi_in_endpoint*) ;

__attribute__((used)) static void snd_usbmidi_in_endpoint_delete(struct snd_usb_midi_in_endpoint* ep)
{
 unsigned int i;

 for (i = 0; i < INPUT_URBS; ++i)
  if (ep->urbs[i])
   free_urb_and_buffer(ep->umidi, ep->urbs[i],
         ep->urbs[i]->transfer_buffer_length);
 kfree(ep);
}
