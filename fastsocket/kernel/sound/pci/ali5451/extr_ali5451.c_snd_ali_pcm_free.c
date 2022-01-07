
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm {size_t device; struct snd_ali* private_data; } ;
struct snd_ali {int ** pcm; } ;



__attribute__((used)) static void snd_ali_pcm_free(struct snd_pcm *pcm)
{
 struct snd_ali *codec = pcm->private_data;
 codec->pcm[pcm->device] = ((void*)0);
}
