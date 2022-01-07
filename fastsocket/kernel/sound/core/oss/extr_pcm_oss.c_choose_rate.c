
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int dummy; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct snd_interval {unsigned int max; unsigned int min; int openmin; scalar_t__ openmax; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int SNDRV_PCM_HW_PARAM_RATE ;
 struct snd_interval* hw_param_interval (struct snd_pcm_hw_params*,int ) ;
 int kfree (struct snd_pcm_hw_params*) ;
 struct snd_pcm_hw_params* kmalloc (int,int ) ;
 int snd_pcm_hw_param_near (struct snd_pcm_substream*,struct snd_pcm_hw_params*,int ,unsigned int,int *) ;
 int snd_pcm_hw_param_set (struct snd_pcm_substream*,struct snd_pcm_hw_params*,int ,unsigned int,int ) ;

__attribute__((used)) static int choose_rate(struct snd_pcm_substream *substream,
         struct snd_pcm_hw_params *params, unsigned int best_rate)
{
 struct snd_interval *it;
 struct snd_pcm_hw_params *save;
 unsigned int rate, prev;

 save = kmalloc(sizeof(*save), GFP_KERNEL);
 if (save == ((void*)0))
  return -ENOMEM;
 *save = *params;
 it = hw_param_interval(save, SNDRV_PCM_HW_PARAM_RATE);


 rate = best_rate;
 for (;;) {
  if (it->max < rate || (it->max == rate && it->openmax))
   break;
  if (it->min < rate || (it->min == rate && !it->openmin)) {
   int ret;
   ret = snd_pcm_hw_param_set(substream, params,
         SNDRV_PCM_HW_PARAM_RATE,
         rate, 0);
   if (ret == (int)rate) {
    kfree(save);
    return rate;
   }
   *params = *save;
  }
  prev = rate;
  rate += best_rate;
  if (rate <= prev)
   break;
 }


 kfree(save);
 return snd_pcm_hw_param_near(substream, params, SNDRV_PCM_HW_PARAM_RATE, best_rate, ((void*)0));
}
