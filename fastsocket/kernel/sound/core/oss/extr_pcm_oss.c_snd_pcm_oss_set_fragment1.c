
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_substream {int runtime; } ;
struct TYPE_2__ {unsigned int fragshift; unsigned int maxfrags; int params; scalar_t__ subdivision; } ;
struct snd_pcm_runtime2 {TYPE_1__ oss; } ;


 int EINVAL ;
 struct snd_pcm_runtime2* oss_runtime (int ) ;

__attribute__((used)) static int snd_pcm_oss_set_fragment1(struct snd_pcm_substream *substream, unsigned int val)
{
 struct snd_pcm_runtime2 *runtime;

 if (substream == ((void*)0))
  return 0;
 runtime = oss_runtime(substream->runtime);
 if (runtime->oss.subdivision || runtime->oss.fragshift)
  return -EINVAL;
 runtime->oss.fragshift = val & 0xffff;
 runtime->oss.maxfrags = (val >> 16) & 0xffff;
 if (runtime->oss.fragshift < 4)
  runtime->oss.fragshift = 4;
 if (runtime->oss.maxfrags < 2)
  runtime->oss.maxfrags = 2;
 runtime->oss.params = 1;
 return 0;
}
