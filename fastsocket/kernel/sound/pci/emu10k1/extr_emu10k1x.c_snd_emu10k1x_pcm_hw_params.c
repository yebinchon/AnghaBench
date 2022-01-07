
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct snd_pcm_substream {TYPE_1__* pcm; struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {struct emu10k1x_pcm* private_data; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct emu10k1x_pcm {TYPE_2__* voice; TYPE_3__* emu; } ;
struct TYPE_6__ {TYPE_2__* voices; } ;
struct TYPE_5__ {int use; struct emu10k1x_pcm* epcm; } ;
struct TYPE_4__ {size_t device; } ;


 int params_buffer_bytes (struct snd_pcm_hw_params*) ;
 int snd_pcm_lib_malloc_pages (struct snd_pcm_substream*,int ) ;

__attribute__((used)) static int snd_emu10k1x_pcm_hw_params(struct snd_pcm_substream *substream,
          struct snd_pcm_hw_params *hw_params)
{
 struct snd_pcm_runtime *runtime = substream->runtime;
 struct emu10k1x_pcm *epcm = runtime->private_data;

 if (! epcm->voice) {
  epcm->voice = &epcm->emu->voices[substream->pcm->device];
  epcm->voice->use = 1;
  epcm->voice->epcm = epcm;
 }

 return snd_pcm_lib_malloc_pages(substream,
     params_buffer_bytes(hw_params));
}
