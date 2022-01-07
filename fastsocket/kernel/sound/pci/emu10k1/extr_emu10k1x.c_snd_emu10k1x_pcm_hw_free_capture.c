
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {struct emu10k1x_pcm* private_data; } ;
struct emu10k1x_pcm {TYPE_1__* voice; } ;
struct TYPE_2__ {int * epcm; scalar_t__ use; } ;


 int snd_pcm_lib_free_pages (struct snd_pcm_substream*) ;

__attribute__((used)) static int snd_emu10k1x_pcm_hw_free_capture(struct snd_pcm_substream *substream)
{
 struct snd_pcm_runtime *runtime = substream->runtime;

 struct emu10k1x_pcm *epcm;

 if (runtime->private_data == ((void*)0))
  return 0;
 epcm = runtime->private_data;

 if (epcm->voice) {
  epcm->voice->use = 0;
  epcm->voice->epcm = ((void*)0);
  epcm->voice = ((void*)0);
 }

 return snd_pcm_lib_free_pages(substream);
}
