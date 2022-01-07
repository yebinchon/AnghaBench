
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct urb {scalar_t__ status; int dev; int actual_length; int transfer_buffer; struct snd_usb_midi_in_endpoint* context; } ;
struct snd_usb_midi_in_endpoint {int error_resubmit; TYPE_2__* umidi; } ;
struct TYPE_4__ {int dev; int error_timer; TYPE_1__* usb_protocol_ops; } ;
struct TYPE_3__ {int (* input ) (struct snd_usb_midi_in_endpoint*,int ,int ) ;} ;


 int ENODEV ;
 scalar_t__ ERROR_DELAY_JIFFIES ;
 int GFP_ATOMIC ;
 int dump_urb (char*,int ,int ) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 int snd_usbmidi_submit_urb (struct urb*,int ) ;
 int snd_usbmidi_urb_error (scalar_t__) ;
 int stub1 (struct snd_usb_midi_in_endpoint*,int ,int ) ;

__attribute__((used)) static void snd_usbmidi_in_urb_complete(struct urb* urb)
{
 struct snd_usb_midi_in_endpoint* ep = urb->context;

 if (urb->status == 0) {
  dump_urb("received", urb->transfer_buffer, urb->actual_length);
  ep->umidi->usb_protocol_ops->input(ep, urb->transfer_buffer,
         urb->actual_length);
 } else {
  int err = snd_usbmidi_urb_error(urb->status);
  if (err < 0) {
   if (err != -ENODEV) {
    ep->error_resubmit = 1;
    mod_timer(&ep->umidi->error_timer,
       jiffies + ERROR_DELAY_JIFFIES);
   }
   return;
  }
 }

 urb->dev = ep->umidi->dev;
 snd_usbmidi_submit_urb(urb, GFP_ATOMIC);
}
