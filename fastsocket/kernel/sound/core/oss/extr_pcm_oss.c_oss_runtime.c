
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_runtime2 {int dummy; } ;
struct snd_pcm_runtime {int dummy; } ;



__attribute__((used)) static inline struct snd_pcm_runtime2 *oss_runtime(struct snd_pcm_runtime *runtime)
{
 return (struct snd_pcm_runtime2 *)runtime;
}
