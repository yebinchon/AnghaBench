
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int dummy; } ;
struct TYPE_5__ {int * buffer; } ;
struct TYPE_8__ {TYPE_1__ oss; } ;
struct TYPE_6__ {scalar_t__ oss; } ;
struct TYPE_7__ {TYPE_2__ oss; } ;


 TYPE_4__* oss_runtime (struct snd_pcm_runtime*) ;
 TYPE_3__* oss_substream (struct snd_pcm_substream*) ;
 int snd_pcm_oss_plugin_clear (struct snd_pcm_substream*) ;
 int vfree (int *) ;

__attribute__((used)) static void snd_pcm_oss_release_substream(struct snd_pcm_substream *substream)
{
 struct snd_pcm_runtime *runtime;
 runtime = substream->runtime;
 vfree(oss_runtime(runtime)->oss.buffer);
 oss_runtime(runtime)->oss.buffer = ((void*)0);



 oss_substream(substream)->oss.oss = 0;
}
