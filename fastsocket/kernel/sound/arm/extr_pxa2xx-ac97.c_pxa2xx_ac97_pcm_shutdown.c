
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct snd_pcm_substream {TYPE_3__* pcm; } ;
struct TYPE_8__ {int priv; int (* shutdown ) (struct snd_pcm_substream*,int ) ;} ;
typedef TYPE_4__ pxa2xx_audio_ops_t ;
struct TYPE_7__ {TYPE_2__* card; } ;
struct TYPE_6__ {TYPE_1__* dev; } ;
struct TYPE_5__ {TYPE_4__* platform_data; } ;


 int stub1 (struct snd_pcm_substream*,int ) ;

__attribute__((used)) static void pxa2xx_ac97_pcm_shutdown(struct snd_pcm_substream *substream)
{
 pxa2xx_audio_ops_t *platform_ops;

        platform_ops = substream->pcm->card->dev->platform_data;
 if (platform_ops && platform_ops->shutdown)
  platform_ops->shutdown(substream, platform_ops->priv);
}
