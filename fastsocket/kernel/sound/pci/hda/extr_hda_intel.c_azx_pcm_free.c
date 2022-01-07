
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm {struct azx_pcm* private_data; } ;
struct azx_pcm {int list; } ;


 int kfree (struct azx_pcm*) ;
 int list_del (int *) ;

__attribute__((used)) static void azx_pcm_free(struct snd_pcm *pcm)
{
 struct azx_pcm *apcm = pcm->private_data;
 if (apcm) {
  list_del(&apcm->list);
  kfree(apcm);
 }
}
