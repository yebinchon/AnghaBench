
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_pcm_substream {int dummy; } ;
struct TYPE_3__ {int pclkdiv_lock; } ;
struct TYPE_4__ {TYPE_1__ es1370; } ;
struct ensoniq {int reg_lock; int mode; TYPE_2__ u; int * playback2_substream; } ;


 int ES_MODE_PLAY2 ;
 struct ensoniq* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int snd_ensoniq_playback2_close(struct snd_pcm_substream *substream)
{
 struct ensoniq *ensoniq = snd_pcm_substream_chip(substream);

 ensoniq->playback2_substream = ((void*)0);
 spin_lock_irq(&ensoniq->reg_lock);



 ensoniq->mode &= ~ES_MODE_PLAY2;
 spin_unlock_irq(&ensoniq->reg_lock);
 return 0;
}
