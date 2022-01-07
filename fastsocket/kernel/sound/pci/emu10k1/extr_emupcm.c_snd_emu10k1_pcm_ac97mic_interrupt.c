
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_emu10k1 {TYPE_2__* pcm_capture_mic_substream; } ;
struct TYPE_4__ {TYPE_1__* runtime; } ;
struct TYPE_3__ {scalar_t__ mode; } ;


 unsigned int IPR_MICBUFHALFFULL ;
 scalar_t__ SNDRV_PCM_MODE_FRAME ;
 int snd_pcm_period_elapsed (TYPE_2__*) ;

__attribute__((used)) static void snd_emu10k1_pcm_ac97mic_interrupt(struct snd_emu10k1 *emu,
           unsigned int status)
{






 snd_pcm_period_elapsed(emu->pcm_capture_mic_substream);
}
