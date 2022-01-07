
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_soc_dai {int active; } ;
struct snd_pcm_substream {int dummy; } ;
struct TYPE_2__ {scalar_t__ configured; } ;


 TYPE_1__ bf5xx_tdm ;

__attribute__((used)) static void bf5xx_tdm_shutdown(struct snd_pcm_substream *substream,
 struct snd_soc_dai *dai)
{

 if (!dai->active)
  bf5xx_tdm.configured = 0;
}
