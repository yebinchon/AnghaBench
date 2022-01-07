
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_pcm_runtime {int hw; } ;
struct loopback_pcm {TYPE_2__* cable; TYPE_1__* substream; } ;
struct TYPE_4__ {int hw; } ;
struct TYPE_3__ {struct snd_pcm_runtime* runtime; } ;



__attribute__((used)) static void params_change_substream(struct loopback_pcm *dpcm,
        struct snd_pcm_runtime *runtime)
{
 struct snd_pcm_runtime *dst_runtime;

 if (dpcm == ((void*)0) || dpcm->substream == ((void*)0))
  return;
 dst_runtime = dpcm->substream->runtime;
 if (dst_runtime == ((void*)0))
  return;
 dst_runtime->hw = dpcm->cable->hw;
}
