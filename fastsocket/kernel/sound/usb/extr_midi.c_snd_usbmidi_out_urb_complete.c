
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct urb {scalar_t__ status; struct out_urb_context* context; } ;
struct snd_usb_midi_out_endpoint {int active_urbs; int drain_urbs; TYPE_1__* umidi; int buffer_lock; int drain_wait; struct out_urb_context* urbs; } ;
struct out_urb_context {struct snd_usb_midi_out_endpoint* ep; } ;
struct TYPE_2__ {int error_timer; } ;


 int ENODEV ;
 scalar_t__ ERROR_DELAY_JIFFIES ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 int snd_usbmidi_do_output (struct snd_usb_midi_out_endpoint*) ;
 int snd_usbmidi_urb_error (scalar_t__) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ unlikely (int) ;
 int wake_up (int *) ;

__attribute__((used)) static void snd_usbmidi_out_urb_complete(struct urb* urb)
{
 struct out_urb_context *context = urb->context;
 struct snd_usb_midi_out_endpoint* ep = context->ep;
 unsigned int urb_index;

 spin_lock(&ep->buffer_lock);
 urb_index = context - ep->urbs;
 ep->active_urbs &= ~(1 << urb_index);
 if (unlikely(ep->drain_urbs)) {
  ep->drain_urbs &= ~(1 << urb_index);
  wake_up(&ep->drain_wait);
 }
 spin_unlock(&ep->buffer_lock);
 if (urb->status < 0) {
  int err = snd_usbmidi_urb_error(urb->status);
  if (err < 0) {
   if (err != -ENODEV)
    mod_timer(&ep->umidi->error_timer,
       jiffies + ERROR_DELAY_JIFFIES);
   return;
  }
 }
 snd_usbmidi_do_output(ep);
}
