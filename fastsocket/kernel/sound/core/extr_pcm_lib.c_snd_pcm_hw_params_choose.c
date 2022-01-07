
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int dummy; } ;
struct snd_pcm_hw_params {int dummy; } ;
 scalar_t__ snd_BUG_ON (int) ;
 int snd_pcm_hw_param_first (struct snd_pcm_substream*,struct snd_pcm_hw_params*,int,int *) ;
 int snd_pcm_hw_param_last (struct snd_pcm_substream*,struct snd_pcm_hw_params*,int,int *) ;

int snd_pcm_hw_params_choose(struct snd_pcm_substream *pcm,
        struct snd_pcm_hw_params *params)
{
 static int vars[] = {
  135,
  132,
  129,
  133,
  130,
  131,
  134,
  128,
  -1
 };
 int err, *v;

 for (v = vars; *v != -1; v++) {
  if (*v != 134)
   err = snd_pcm_hw_param_first(pcm, params, *v, ((void*)0));
  else
   err = snd_pcm_hw_param_last(pcm, params, *v, ((void*)0));
  if (snd_BUG_ON(err < 0))
   return err;
 }
 return 0;
}
