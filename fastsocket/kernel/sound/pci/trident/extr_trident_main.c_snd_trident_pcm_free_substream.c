
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_trident_voice {struct snd_trident* trident; } ;
struct snd_trident {int dummy; } ;
struct snd_pcm_runtime {struct snd_trident_voice* private_data; } ;


 int snd_trident_free_voice (struct snd_trident*,struct snd_trident_voice*) ;

__attribute__((used)) static void snd_trident_pcm_free_substream(struct snd_pcm_runtime *runtime)
{
 struct snd_trident_voice *voice = runtime->private_data;
 struct snd_trident *trident;

 if (voice) {
  trident = voice->trident;
  snd_trident_free_voice(trident, voice);
 }
}
