
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_substream {scalar_t__ stream; struct snd_pcm_runtime* runtime; } ;
struct TYPE_2__ {int rate_min; int rate_max; } ;
struct snd_pcm_runtime {TYPE_1__ hw; } ;
struct snd_ice1712 {int (* is_spdif_master ) (struct snd_ice1712*) ;struct juli_spec* spec; } ;
struct juli_spec {int ak4114; } ;


 scalar_t__ SNDRV_PCM_STREAM_PLAYBACK ;
 int snd_ak4114_external_rate (int ) ;
 int stub1 (struct snd_ice1712*) ;

__attribute__((used)) static void juli_spdif_in_open(struct snd_ice1712 *ice,
    struct snd_pcm_substream *substream)
{
 struct juli_spec *spec = ice->spec;
 struct snd_pcm_runtime *runtime = substream->runtime;
 int rate;

 if (substream->stream == SNDRV_PCM_STREAM_PLAYBACK ||
   !ice->is_spdif_master(ice))
  return;
 rate = snd_ak4114_external_rate(spec->ak4114);
 if (rate >= runtime->hw.rate_min && rate <= runtime->hw.rate_max) {
  runtime->hw.rate_min = rate;
  runtime->hw.rate_max = rate;
 }
}
