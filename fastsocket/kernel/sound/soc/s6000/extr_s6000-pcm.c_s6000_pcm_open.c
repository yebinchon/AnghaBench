
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_soc_pcm_runtime {TYPE_2__* dai; } ;
struct snd_pcm_substream {struct snd_pcm_runtime* runtime; struct snd_soc_pcm_runtime* private_data; } ;
struct snd_pcm_runtime {struct s6000_runtime_data* private_data; } ;
struct s6000_runtime_data {int lock; } ;
struct s6000_pcm_dma_params {int rate; int lock; scalar_t__ same_rate; } ;
struct TYPE_4__ {TYPE_1__* cpu_dai; } ;
struct TYPE_3__ {struct s6000_pcm_dma_params* dma_data; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int SNDRV_PCM_HW_PARAM_BUFFER_BYTES ;
 int SNDRV_PCM_HW_PARAM_PERIODS ;
 int SNDRV_PCM_HW_PARAM_PERIOD_BYTES ;
 int SNDRV_PCM_HW_PARAM_RATE ;
 struct s6000_runtime_data* kzalloc (int,int ) ;
 int s6000_pcm_hardware ;
 int snd_pcm_hw_constraint_integer (struct snd_pcm_runtime*,int ) ;
 int snd_pcm_hw_constraint_minmax (struct snd_pcm_runtime*,int ,int,int) ;
 int snd_pcm_hw_constraint_step (struct snd_pcm_runtime*,int ,int ,int) ;
 int snd_soc_set_runtime_hwparams (struct snd_pcm_substream*,int *) ;
 int spin_lock (int *) ;
 int spin_lock_init (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int s6000_pcm_open(struct snd_pcm_substream *substream)
{
 struct snd_soc_pcm_runtime *soc_runtime = substream->private_data;
 struct s6000_pcm_dma_params *par = soc_runtime->dai->cpu_dai->dma_data;
 struct snd_pcm_runtime *runtime = substream->runtime;
 struct s6000_runtime_data *prtd;
 int ret;

 snd_soc_set_runtime_hwparams(substream, &s6000_pcm_hardware);

 ret = snd_pcm_hw_constraint_step(runtime, 0,
      SNDRV_PCM_HW_PARAM_PERIOD_BYTES, 16);
 if (ret < 0)
  return ret;
 ret = snd_pcm_hw_constraint_step(runtime, 0,
      SNDRV_PCM_HW_PARAM_BUFFER_BYTES, 16);
 if (ret < 0)
  return ret;
 ret = snd_pcm_hw_constraint_integer(runtime,
         SNDRV_PCM_HW_PARAM_PERIODS);
 if (ret < 0)
  return ret;

 if (par->same_rate) {
  int rate;
  spin_lock(&par->lock);
  rate = par->rate;
  spin_unlock(&par->lock);
  if (rate != -1) {
   ret = snd_pcm_hw_constraint_minmax(runtime,
       SNDRV_PCM_HW_PARAM_RATE,
       rate, rate);
   if (ret < 0)
    return ret;
  }
 }

 prtd = kzalloc(sizeof(struct s6000_runtime_data), GFP_KERNEL);
 if (prtd == ((void*)0))
  return -ENOMEM;

 spin_lock_init(&prtd->lock);

 runtime->private_data = prtd;

 return 0;
}
