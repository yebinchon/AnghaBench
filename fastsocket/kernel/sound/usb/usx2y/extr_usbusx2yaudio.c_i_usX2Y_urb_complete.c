
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usX2Ydev {int wait_iso_frame; struct snd_usX2Y_substream** subs; int dev; } ;
struct urb {int status; int start_frame; int pipe; struct snd_usX2Y_substream* context; } ;
struct snd_usX2Y_substream {int state; struct urb* completed_urb; int endpoint; struct usX2Ydev* usX2Y; } ;


 size_t SNDRV_PCM_STREAM_CAPTURE ;
 size_t SNDRV_PCM_STREAM_PLAYBACK ;
 scalar_t__ atomic_read (int *) ;
 scalar_t__ likely (int) ;
 scalar_t__ nr_of_packs () ;
 int snd_printdd (char*,...) ;
 scalar_t__ state_PREPARED ;
 scalar_t__ unlikely (int) ;
 int usX2Y_clients_stop (struct usX2Ydev*) ;
 int usX2Y_error_sequence (struct usX2Ydev*,struct snd_usX2Y_substream*,struct urb*) ;
 int usX2Y_error_urb_status (struct usX2Ydev*,struct snd_usX2Y_substream*,struct urb*) ;
 int usX2Y_usbframe_complete (struct snd_usX2Y_substream*,struct snd_usX2Y_substream*,int) ;
 int usb_get_current_frame_number (int ) ;
 scalar_t__ usb_pipein (int ) ;

__attribute__((used)) static void i_usX2Y_urb_complete(struct urb *urb)
{
 struct snd_usX2Y_substream *subs = urb->context;
 struct usX2Ydev *usX2Y = subs->usX2Y;

 if (unlikely(atomic_read(&subs->state) < state_PREPARED)) {
  snd_printdd("hcd_frame=%i ep=%i%s status=%i start_frame=%i\n",
       usb_get_current_frame_number(usX2Y->dev),
       subs->endpoint, usb_pipein(urb->pipe) ? "in" : "out",
       urb->status, urb->start_frame);
  return;
 }
 if (unlikely(urb->status)) {
  usX2Y_error_urb_status(usX2Y, subs, urb);
  return;
 }
 if (likely((urb->start_frame & 0xFFFF) == (usX2Y->wait_iso_frame & 0xFFFF)))
  subs->completed_urb = urb;
 else {
  usX2Y_error_sequence(usX2Y, subs, urb);
  return;
 }
 {
  struct snd_usX2Y_substream *capsubs = usX2Y->subs[SNDRV_PCM_STREAM_CAPTURE],
   *playbacksubs = usX2Y->subs[SNDRV_PCM_STREAM_PLAYBACK];
  if (capsubs->completed_urb &&
      atomic_read(&capsubs->state) >= state_PREPARED &&
      (playbacksubs->completed_urb ||
       atomic_read(&playbacksubs->state) < state_PREPARED)) {
   if (!usX2Y_usbframe_complete(capsubs, playbacksubs, urb->start_frame))
    usX2Y->wait_iso_frame += nr_of_packs();
   else {
    snd_printdd("\n");
    usX2Y_clients_stop(usX2Y);
   }
  }
 }
}
