
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_substream {size_t number; } ;
struct snd_emu10k1_fx8010_pcm {scalar_t__ opened; } ;
struct TYPE_2__ {struct snd_emu10k1_fx8010_pcm* pcm; } ;
struct snd_emu10k1 {int reg_lock; TYPE_1__ fx8010; } ;


 struct snd_emu10k1* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int snd_emu10k1_fx8010_playback_close(struct snd_pcm_substream *substream)
{
 struct snd_emu10k1 *emu = snd_pcm_substream_chip(substream);
 struct snd_emu10k1_fx8010_pcm *pcm = &emu->fx8010.pcm[substream->number];

 spin_lock_irq(&emu->reg_lock);
 pcm->opened = 0;
 spin_unlock_irq(&emu->reg_lock);
 return 0;
}
