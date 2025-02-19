
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct snd_soc_pcm_runtime {TYPE_2__* dai; } ;
struct snd_pcm_substream {TYPE_5__* pcm; TYPE_3__* pstr; struct snd_soc_pcm_runtime* private_data; struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int dummy; } ;
struct psc_dma_stream {struct snd_pcm_substream* stream; } ;
struct psc_dma {struct psc_dma_stream playback; struct psc_dma_stream capture; int dev; } ;
struct TYPE_10__ {TYPE_4__* card; } ;
struct TYPE_9__ {int dev; } ;
struct TYPE_8__ {scalar_t__ stream; } ;
struct TYPE_7__ {TYPE_1__* cpu_dai; } ;
struct TYPE_6__ {struct psc_dma* private_data; } ;


 int SNDRV_PCM_HW_PARAM_PERIODS ;
 scalar_t__ SNDRV_PCM_STREAM_CAPTURE ;
 int dev_dbg (int ,char*,struct snd_pcm_substream*) ;
 int dev_err (int ,char*) ;
 int psc_dma_hardware ;
 int snd_pcm_hw_constraint_integer (struct snd_pcm_runtime*,int ) ;
 int snd_soc_set_runtime_hwparams (struct snd_pcm_substream*,int *) ;

__attribute__((used)) static int psc_dma_open(struct snd_pcm_substream *substream)
{
 struct snd_pcm_runtime *runtime = substream->runtime;
 struct snd_soc_pcm_runtime *rtd = substream->private_data;
 struct psc_dma *psc_dma = rtd->dai->cpu_dai->private_data;
 struct psc_dma_stream *s;
 int rc;

 dev_dbg(psc_dma->dev, "psc_dma_open(substream=%p)\n", substream);

 if (substream->pstr->stream == SNDRV_PCM_STREAM_CAPTURE)
  s = &psc_dma->capture;
 else
  s = &psc_dma->playback;

 snd_soc_set_runtime_hwparams(substream, &psc_dma_hardware);

 rc = snd_pcm_hw_constraint_integer(runtime,
  SNDRV_PCM_HW_PARAM_PERIODS);
 if (rc < 0) {
  dev_err(substream->pcm->card->dev, "invalid buffer size\n");
  return rc;
 }

 s->stream = substream;
 return 0;
}
