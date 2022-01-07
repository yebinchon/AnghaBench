
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_usb_midi_endpoint {scalar_t__ in; scalar_t__ out; } ;
struct snd_usb_midi {int mutex; struct snd_usb_midi_endpoint* endpoints; } ;


 int MIDI_MAX_ENDPOINTS ;
 int kfree (struct snd_usb_midi*) ;
 int mutex_destroy (int *) ;
 int snd_usbmidi_in_endpoint_delete (scalar_t__) ;
 int snd_usbmidi_out_endpoint_delete (scalar_t__) ;

__attribute__((used)) static void snd_usbmidi_free(struct snd_usb_midi* umidi)
{
 int i;

 for (i = 0; i < MIDI_MAX_ENDPOINTS; ++i) {
  struct snd_usb_midi_endpoint* ep = &umidi->endpoints[i];
  if (ep->out)
   snd_usbmidi_out_endpoint_delete(ep->out);
  if (ep->in)
   snd_usbmidi_in_endpoint_delete(ep->in);
 }
 mutex_destroy(&umidi->mutex);
 kfree(umidi);
}
