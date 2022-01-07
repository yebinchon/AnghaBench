
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {struct atmel_runtime_data* private_data; } ;
struct atmel_runtime_data {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int SNDRV_PCM_HW_PARAM_PERIODS ;
 int atmel_pcm_hardware ;
 struct atmel_runtime_data* kzalloc (int,int ) ;
 int snd_pcm_hw_constraint_integer (struct snd_pcm_runtime*,int ) ;
 int snd_soc_set_runtime_hwparams (struct snd_pcm_substream*,int *) ;

__attribute__((used)) static int atmel_pcm_open(struct snd_pcm_substream *substream)
{
 struct snd_pcm_runtime *runtime = substream->runtime;
 struct atmel_runtime_data *prtd;
 int ret = 0;

 snd_soc_set_runtime_hwparams(substream, &atmel_pcm_hardware);


 ret = snd_pcm_hw_constraint_integer(runtime,
      SNDRV_PCM_HW_PARAM_PERIODS);
 if (ret < 0)
  goto out;

 prtd = kzalloc(sizeof(struct atmel_runtime_data), GFP_KERNEL);
 if (prtd == ((void*)0)) {
  ret = -ENOMEM;
  goto out;
 }
 runtime->private_data = prtd;

 out:
 return ret;
}
