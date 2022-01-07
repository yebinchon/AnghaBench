
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_hw_params {unsigned int info; } ;


 unsigned int SNDRV_PCM_HW_PARAM_FIRST_INTERVAL ;
 unsigned int SNDRV_PCM_HW_PARAM_FIRST_MASK ;
 unsigned int SNDRV_PCM_HW_PARAM_LAST_INTERVAL ;
 unsigned int SNDRV_PCM_HW_PARAM_LAST_MASK ;
 int _snd_pcm_hw_param_any (struct snd_pcm_hw_params*,unsigned int) ;
 int memset (struct snd_pcm_hw_params*,int ,int) ;

void _snd_pcm_hw_params_any(struct snd_pcm_hw_params *params)
{
 unsigned int k;
 memset(params, 0, sizeof(*params));
 for (k = SNDRV_PCM_HW_PARAM_FIRST_MASK; k <= SNDRV_PCM_HW_PARAM_LAST_MASK; k++)
  _snd_pcm_hw_param_any(params, k);
 for (k = SNDRV_PCM_HW_PARAM_FIRST_INTERVAL; k <= SNDRV_PCM_HW_PARAM_LAST_INTERVAL; k++)
  _snd_pcm_hw_param_any(params, k);
 params->info = ~0U;
}
