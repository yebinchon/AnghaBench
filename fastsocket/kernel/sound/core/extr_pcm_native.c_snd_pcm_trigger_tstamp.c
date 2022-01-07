
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {struct snd_pcm_substream* trigger_master; int trigger_tstamp; } ;


 int snd_pcm_gettime (struct snd_pcm_runtime*,int *) ;

__attribute__((used)) static void snd_pcm_trigger_tstamp(struct snd_pcm_substream *substream)
{
 struct snd_pcm_runtime *runtime = substream->runtime;
 if (runtime->trigger_master == ((void*)0))
  return;
 if (runtime->trigger_master == substream) {
  snd_pcm_gettime(runtime, &runtime->trigger_tstamp);
 } else {
  snd_pcm_trigger_tstamp(runtime->trigger_master);
  runtime->trigger_tstamp = runtime->trigger_master->runtime->trigger_tstamp;
 }
 runtime->trigger_master = ((void*)0);
}
