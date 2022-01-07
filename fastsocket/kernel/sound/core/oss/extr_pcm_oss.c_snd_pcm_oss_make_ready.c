
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_substream {int runtime; } ;
struct TYPE_2__ {scalar_t__ prepare; scalar_t__ params; } ;
struct snd_pcm_runtime2 {TYPE_1__ oss; } ;


 struct snd_pcm_runtime2* oss_runtime (int ) ;
 int snd_pcm_oss_change_params (struct snd_pcm_substream*) ;
 int snd_pcm_oss_prepare (struct snd_pcm_substream*) ;

__attribute__((used)) static int snd_pcm_oss_make_ready(struct snd_pcm_substream *substream)
{
 struct snd_pcm_runtime2 *runtime;
 int err;

 if (substream == ((void*)0))
  return 0;
 runtime = oss_runtime(substream->runtime);
 if (runtime->oss.params) {
  err = snd_pcm_oss_change_params(substream);
  if (err < 0)
   return err;
 }
 if (runtime->oss.prepare) {
  err = snd_pcm_oss_prepare(substream);
  if (err < 0)
   return err;
 }
 return 0;
}
