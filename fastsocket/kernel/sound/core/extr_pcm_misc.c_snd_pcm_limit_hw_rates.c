
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int rates; int rate_max; int rate_min; } ;
struct snd_pcm_runtime {TYPE_1__ hw; } ;
struct TYPE_4__ {int * list; scalar_t__ count; } ;


 TYPE_2__ snd_pcm_known_rates ;

int snd_pcm_limit_hw_rates(struct snd_pcm_runtime *runtime)
{
 int i;
 for (i = 0; i < (int)snd_pcm_known_rates.count; i++) {
  if (runtime->hw.rates & (1 << i)) {
   runtime->hw.rate_min = snd_pcm_known_rates.list[i];
   break;
  }
 }
 for (i = (int)snd_pcm_known_rates.count - 1; i >= 0; i--) {
  if (runtime->hw.rates & (1 << i)) {
   runtime->hw.rate_max = snd_pcm_known_rates.list[i];
   break;
  }
 }
 return 0;
}
