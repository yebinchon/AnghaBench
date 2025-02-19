
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_runtime {struct snd_ali_voice* private_data; } ;
struct snd_ali_voice {struct snd_ali* codec; } ;
struct snd_ali {int dummy; } ;


 int snd_ali_free_voice (struct snd_ali*,struct snd_ali_voice*) ;

__attribute__((used)) static void snd_ali_pcm_free_substream(struct snd_pcm_runtime *runtime)
{
 struct snd_ali_voice *pvoice = runtime->private_data;
 struct snd_ali *codec;

 if (pvoice) {
  codec = pvoice->codec;
  snd_ali_free_voice(pvoice->codec, pvoice);
 }
}
