
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_usb_midi_in_endpoint {TYPE_2__** urbs; scalar_t__ error_resubmit; } ;
struct snd_usb_midi {int disc_lock; TYPE_1__* endpoints; int dev; scalar_t__ disconnected; } ;
struct TYPE_4__ {int dev; } ;
struct TYPE_3__ {scalar_t__ out; struct snd_usb_midi_in_endpoint* in; } ;


 int GFP_ATOMIC ;
 unsigned int INPUT_URBS ;
 unsigned int MIDI_MAX_ENDPOINTS ;
 int snd_usbmidi_do_output (scalar_t__) ;
 int snd_usbmidi_submit_urb (TYPE_2__*,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void snd_usbmidi_error_timer(unsigned long data)
{
 struct snd_usb_midi *umidi = (struct snd_usb_midi *)data;
 unsigned int i, j;

 spin_lock(&umidi->disc_lock);
 if (umidi->disconnected) {
  spin_unlock(&umidi->disc_lock);
  return;
 }
 for (i = 0; i < MIDI_MAX_ENDPOINTS; ++i) {
  struct snd_usb_midi_in_endpoint *in = umidi->endpoints[i].in;
  if (in && in->error_resubmit) {
   in->error_resubmit = 0;
   for (j = 0; j < INPUT_URBS; ++j) {
    in->urbs[j]->dev = umidi->dev;
    snd_usbmidi_submit_urb(in->urbs[j], GFP_ATOMIC);
   }
  }
  if (umidi->endpoints[i].out)
   snd_usbmidi_do_output(umidi->endpoints[i].out);
 }
 spin_unlock(&umidi->disc_lock);
}
