
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int dummy; } ;
struct hdspm {int playback_pid; int lock; int * playback_substream; } ;


 struct hdspm* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int snd_hdspm_playback_release(struct snd_pcm_substream *substream)
{
 struct hdspm *hdspm = snd_pcm_substream_chip(substream);

 spin_lock_irq(&hdspm->lock);

 hdspm->playback_pid = -1;
 hdspm->playback_substream = ((void*)0);

 spin_unlock_irq(&hdspm->lock);

 return 0;
}
