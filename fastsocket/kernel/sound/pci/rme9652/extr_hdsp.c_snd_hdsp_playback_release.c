
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_pcm_substream {int dummy; } ;
struct hdsp {int playback_pid; TYPE_2__* spdif_ctl; int card; int lock; int * playback_substream; } ;
struct TYPE_4__ {int id; TYPE_1__* vd; } ;
struct TYPE_3__ {int access; } ;


 int SNDRV_CTL_ELEM_ACCESS_INACTIVE ;
 int SNDRV_CTL_EVENT_MASK_INFO ;
 int SNDRV_CTL_EVENT_MASK_VALUE ;
 int snd_ctl_notify (int ,int,int *) ;
 struct hdsp* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int snd_hdsp_playback_release(struct snd_pcm_substream *substream)
{
 struct hdsp *hdsp = snd_pcm_substream_chip(substream);

 spin_lock_irq(&hdsp->lock);

 hdsp->playback_pid = -1;
 hdsp->playback_substream = ((void*)0);

 spin_unlock_irq(&hdsp->lock);

 hdsp->spdif_ctl->vd[0].access |= SNDRV_CTL_ELEM_ACCESS_INACTIVE;
 snd_ctl_notify(hdsp->card, SNDRV_CTL_EVENT_MASK_VALUE |
         SNDRV_CTL_EVENT_MASK_INFO, &hdsp->spdif_ctl->id);
 return 0;
}
