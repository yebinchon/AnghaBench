
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {struct gus_pcm_private* private_data; } ;
struct gus_pcm_private {scalar_t__ memory; TYPE_2__* gus; int ** pvoices; } ;
struct TYPE_3__ {int mem_alloc; } ;
struct TYPE_4__ {TYPE_1__ gf1; } ;


 int snd_gf1_free_voice (TYPE_2__*,int *) ;
 int snd_gf1_mem_free (int *,scalar_t__) ;
 int snd_pcm_lib_free_pages (struct snd_pcm_substream*) ;

__attribute__((used)) static int snd_gf1_pcm_playback_hw_free(struct snd_pcm_substream *substream)
{
 struct snd_pcm_runtime *runtime = substream->runtime;
 struct gus_pcm_private *pcmp = runtime->private_data;

 snd_pcm_lib_free_pages(substream);
 if (pcmp->pvoices[0]) {
  snd_gf1_free_voice(pcmp->gus, pcmp->pvoices[0]);
  pcmp->pvoices[0] = ((void*)0);
 }
 if (pcmp->pvoices[1]) {
  snd_gf1_free_voice(pcmp->gus, pcmp->pvoices[1]);
  pcmp->pvoices[1] = ((void*)0);
 }
 if (pcmp->memory > 0) {
  snd_gf1_mem_free(&pcmp->gus->gf1.mem_alloc, pcmp->memory);
  pcmp->memory = 0;
 }
 return 0;
}
