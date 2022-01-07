
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int dummy; } ;
struct snd_pcm_indirect2 {int dummy; } ;
struct snd_ml403_ac97cr {struct snd_pcm_indirect2 capture_ind2_rec; struct snd_pcm_substream* capture_substream; struct snd_pcm_indirect2 ind_rec; struct snd_pcm_substream* playback_substream; } ;
typedef int snd_pcm_uframes_t ;


 int snd_pcm_indirect2_pointer (struct snd_pcm_substream*,struct snd_pcm_indirect2*) ;
 struct snd_ml403_ac97cr* snd_pcm_substream_chip (struct snd_pcm_substream*) ;

__attribute__((used)) static snd_pcm_uframes_t
snd_ml403_ac97cr_pcm_pointer(struct snd_pcm_substream *substream)
{
 struct snd_ml403_ac97cr *ml403_ac97cr;
 struct snd_pcm_indirect2 *ind2_rec = ((void*)0);

 ml403_ac97cr = snd_pcm_substream_chip(substream);

 if (substream == ml403_ac97cr->playback_substream)
  ind2_rec = &ml403_ac97cr->ind_rec;
 if (substream == ml403_ac97cr->capture_substream)
  ind2_rec = &ml403_ac97cr->capture_ind2_rec;

 if (ind2_rec != ((void*)0))
  return snd_pcm_indirect2_pointer(substream, ind2_rec);
 return (snd_pcm_uframes_t) 0;
}
