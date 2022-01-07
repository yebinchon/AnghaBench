
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm {int dummy; } ;


 int snd_pcm_lib_preallocate_free_for_all (struct snd_pcm*) ;

__attribute__((used)) static void camelot_pcm_free(struct snd_pcm *pcm)
{
 snd_pcm_lib_preallocate_free_for_all(pcm);
}
