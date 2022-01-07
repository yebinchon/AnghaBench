
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {struct omap_runtime_data* private_data; } ;
struct omap_runtime_data {int lock; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int SNDRV_PCM_HW_PARAM_PERIODS ;
 struct omap_runtime_data* kzalloc (int,int ) ;
 int omap_pcm_hardware ;
 int snd_pcm_hw_constraint_integer (struct snd_pcm_runtime*,int ) ;
 int snd_soc_set_runtime_hwparams (struct snd_pcm_substream*,int *) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int omap_pcm_open(struct snd_pcm_substream *substream)
{
 struct snd_pcm_runtime *runtime = substream->runtime;
 struct omap_runtime_data *prtd;
 int ret;

 snd_soc_set_runtime_hwparams(substream, &omap_pcm_hardware);


 ret = snd_pcm_hw_constraint_integer(runtime,
         SNDRV_PCM_HW_PARAM_PERIODS);
 if (ret < 0)
  goto out;

 prtd = kzalloc(sizeof(*prtd), GFP_KERNEL);
 if (prtd == ((void*)0)) {
  ret = -ENOMEM;
  goto out;
 }
 spin_lock_init(&prtd->lock);
 runtime->private_data = prtd;

out:
 return ret;
}
