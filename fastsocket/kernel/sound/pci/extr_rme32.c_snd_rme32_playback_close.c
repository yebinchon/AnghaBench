
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_pcm_substream {int dummy; } ;
struct rme32 {int wcreg; TYPE_2__* spdif_ctl; int card; int lock; scalar_t__ playback_periodsize; int * playback_substream; } ;
struct TYPE_4__ {int id; TYPE_1__* vd; } ;
struct TYPE_3__ {int access; } ;


 int RME32_WCR_ADAT ;
 int SNDRV_CTL_ELEM_ACCESS_INACTIVE ;
 int SNDRV_CTL_EVENT_MASK_INFO ;
 int SNDRV_CTL_EVENT_MASK_VALUE ;
 int snd_ctl_notify (int ,int,int *) ;
 struct rme32* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int snd_rme32_playback_close(struct snd_pcm_substream *substream)
{
 struct rme32 *rme32 = snd_pcm_substream_chip(substream);
 int spdif = 0;

 spin_lock_irq(&rme32->lock);
 rme32->playback_substream = ((void*)0);
 rme32->playback_periodsize = 0;
 spdif = (rme32->wcreg & RME32_WCR_ADAT) == 0;
 spin_unlock_irq(&rme32->lock);
 if (spdif) {
  rme32->spdif_ctl->vd[0].access |= SNDRV_CTL_ELEM_ACCESS_INACTIVE;
  snd_ctl_notify(rme32->card, SNDRV_CTL_EVENT_MASK_VALUE |
          SNDRV_CTL_EVENT_MASK_INFO,
          &rme32->spdif_ctl->id);
 }
 return 0;
}
