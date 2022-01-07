
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_substream {int runtime; } ;
struct TYPE_2__ {int subdivision; int params; scalar_t__ fragshift; } ;
struct snd_pcm_runtime2 {TYPE_1__ oss; } ;


 int EINVAL ;
 struct snd_pcm_runtime2* oss_runtime (int ) ;

__attribute__((used)) static int snd_pcm_oss_set_subdivide1(struct snd_pcm_substream *substream, int subdivide)
{
 struct snd_pcm_runtime2 *runtime;

 if (substream == ((void*)0))
  return 0;
 runtime = oss_runtime(substream->runtime);
 if (subdivide == 0) {
  subdivide = runtime->oss.subdivision;
  if (subdivide == 0)
   subdivide = 1;
  return subdivide;
 }
 if (runtime->oss.subdivision || runtime->oss.fragshift)
  return -EINVAL;
 if (subdivide != 1 && subdivide != 2 && subdivide != 4 &&
     subdivide != 8 && subdivide != 16)
  return -EINVAL;
 runtime->oss.subdivision = subdivide;
 runtime->oss.params = 1;
 return subdivide;
}
