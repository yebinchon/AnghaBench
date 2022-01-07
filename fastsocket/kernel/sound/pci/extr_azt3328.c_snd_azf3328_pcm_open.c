
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int hw; } ;
struct snd_azf3328 {TYPE_1__* codecs; } ;
typedef enum snd_azf3328_codec_type { ____Placeholder_snd_azf3328_codec_type } snd_azf3328_codec_type ;
struct TYPE_2__ {struct snd_pcm_substream* substream; } ;


 int SNDRV_PCM_HW_PARAM_RATE ;
 int snd_azf3328_dbgcallenter () ;
 int snd_azf3328_dbgcallleave () ;
 int snd_azf3328_hardware ;
 int snd_azf3328_hw_constraints_rates ;
 int snd_pcm_hw_constraint_list (struct snd_pcm_runtime*,int ,int ,int *) ;
 struct snd_azf3328* snd_pcm_substream_chip (struct snd_pcm_substream*) ;

__attribute__((used)) static int
snd_azf3328_pcm_open(struct snd_pcm_substream *substream,
       enum snd_azf3328_codec_type codec_type
)
{
 struct snd_azf3328 *chip = snd_pcm_substream_chip(substream);
 struct snd_pcm_runtime *runtime = substream->runtime;

 snd_azf3328_dbgcallenter();
 chip->codecs[codec_type].substream = substream;


 runtime->hw = snd_azf3328_hardware;

 snd_pcm_hw_constraint_list(runtime, 0, SNDRV_PCM_HW_PARAM_RATE,
       &snd_azf3328_hw_constraints_rates);
 snd_azf3328_dbgcallleave();
 return 0;
}
