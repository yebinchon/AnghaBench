
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_usb_midi_out_endpoint {TYPE_1__* urbs; int max_transfer; int umidi; } ;
struct TYPE_2__ {int * urb; } ;


 unsigned int OUTPUT_URBS ;
 int free_urb_and_buffer (int ,int *,int ) ;

__attribute__((used)) static void snd_usbmidi_out_endpoint_clear(struct snd_usb_midi_out_endpoint *ep)
{
 unsigned int i;

 for (i = 0; i < OUTPUT_URBS; ++i)
  if (ep->urbs[i].urb) {
   free_urb_and_buffer(ep->umidi, ep->urbs[i].urb,
         ep->max_transfer);
   ep->urbs[i].urb = ((void*)0);
  }
}
