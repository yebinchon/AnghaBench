
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usX2Ydev {int prepare_wait_queue; int * prepare_subs; struct snd_usX2Y_substream** subs; } ;
struct urb {scalar_t__ start_frame; struct snd_usX2Y_substream* status; } ;
struct snd_usX2Y_substream {struct urb** urb; int pcm_substream; int state; } ;


 int NRURBS ;
 int SNDRV_PCM_STATE_XRUN ;
 scalar_t__ atomic_read (int *) ;
 int atomic_set (int *,int ) ;
 int snd_pcm_stop (int ,int ) ;
 int snd_printdd (char*,int,struct snd_usX2Y_substream*,scalar_t__) ;
 scalar_t__ state_PRERUNNING ;
 int state_STOPPED ;
 int wake_up (int *) ;

__attribute__((used)) static void usX2Y_clients_stop(struct usX2Ydev *usX2Y)
{
 int s, u;

 for (s = 0; s < 4; s++) {
  struct snd_usX2Y_substream *subs = usX2Y->subs[s];
  if (subs) {
   snd_printdd("%i %p state=%i\n", s, subs, atomic_read(&subs->state));
   atomic_set(&subs->state, state_STOPPED);
  }
 }
 for (s = 0; s < 4; s++) {
  struct snd_usX2Y_substream *subs = usX2Y->subs[s];
  if (subs) {
   if (atomic_read(&subs->state) >= state_PRERUNNING) {
    snd_pcm_stop(subs->pcm_substream, SNDRV_PCM_STATE_XRUN);
   }
   for (u = 0; u < NRURBS; u++) {
    struct urb *urb = subs->urb[u];
    if (((void*)0) != urb)
     snd_printdd("%i status=%i start_frame=%i\n",
          u, urb->status, urb->start_frame);
   }
  }
 }
 usX2Y->prepare_subs = ((void*)0);
 wake_up(&usX2Y->prepare_wait_queue);
}
