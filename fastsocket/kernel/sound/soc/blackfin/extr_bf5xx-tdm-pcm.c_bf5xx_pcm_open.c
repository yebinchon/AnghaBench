
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int * private_data; } ;


 int ENODEV ;
 int SNDRV_PCM_HW_PARAM_PERIODS ;
 int bf5xx_pcm_hardware ;
 int pr_err (char*) ;
 int snd_pcm_hw_constraint_integer (struct snd_pcm_runtime*,int ) ;
 int snd_soc_set_runtime_hwparams (struct snd_pcm_substream*,int *) ;
 int * sport_handle ;

__attribute__((used)) static int bf5xx_pcm_open(struct snd_pcm_substream *substream)
{
 struct snd_pcm_runtime *runtime = substream->runtime;
 int ret = 0;

 snd_soc_set_runtime_hwparams(substream, &bf5xx_pcm_hardware);

 ret = snd_pcm_hw_constraint_integer(runtime,
  SNDRV_PCM_HW_PARAM_PERIODS);
 if (ret < 0)
  goto out;

 if (sport_handle != ((void*)0))
  runtime->private_data = sport_handle;
 else {
  pr_err("sport_handle is NULL\n");
  ret = -ENODEV;
 }
out:
 return ret;
}
