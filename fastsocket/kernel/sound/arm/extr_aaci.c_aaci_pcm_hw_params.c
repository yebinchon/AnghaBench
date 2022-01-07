
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct snd_pcm_substream {scalar_t__ stream; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct aaci_runtime {int pcm_open; TYPE_2__* pcm; } ;
struct TYPE_5__ {TYPE_1__* r; } ;
struct TYPE_4__ {int slots; } ;


 scalar_t__ SNDRV_PCM_STREAM_PLAYBACK ;
 int aaci_pcm_hw_free (struct snd_pcm_substream*) ;
 int devdma_hw_alloc (int *,struct snd_pcm_substream*,int ) ;
 int params_buffer_bytes (struct snd_pcm_hw_params*) ;
 int params_channels (struct snd_pcm_hw_params*) ;
 int params_rate (struct snd_pcm_hw_params*) ;
 int snd_ac97_pcm_close (TYPE_2__*) ;
 int snd_ac97_pcm_open (TYPE_2__*,int ,int ,int ) ;

__attribute__((used)) static int aaci_pcm_hw_params(struct snd_pcm_substream *substream,
         struct aaci_runtime *aacirun,
         struct snd_pcm_hw_params *params)
{
 int err;

 aaci_pcm_hw_free(substream);
 if (aacirun->pcm_open) {
  snd_ac97_pcm_close(aacirun->pcm);
  aacirun->pcm_open = 0;
 }

 err = devdma_hw_alloc(((void*)0), substream,
         params_buffer_bytes(params));
 if (err < 0)
  goto out;

 if (substream->stream == SNDRV_PCM_STREAM_PLAYBACK)
  err = snd_ac97_pcm_open(aacirun->pcm, params_rate(params),
     params_channels(params),
     aacirun->pcm->r[0].slots);
 else
  err = snd_ac97_pcm_open(aacirun->pcm, params_rate(params),
     params_channels(params),
     aacirun->pcm->r[0].slots);

 if (err)
  goto out;

 aacirun->pcm_open = 1;

 out:
 return err;
}
