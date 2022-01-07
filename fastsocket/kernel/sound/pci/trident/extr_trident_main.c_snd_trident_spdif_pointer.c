
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_trident_voice {int running; } ;
struct snd_trident {int dummy; } ;
struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {struct snd_trident_voice* private_data; } ;
typedef unsigned int snd_pcm_uframes_t ;


 int NX_SPCTRL_SPCSO ;
 int TRID_REG (struct snd_trident*,int ) ;
 int inl (int ) ;
 struct snd_trident* snd_pcm_substream_chip (struct snd_pcm_substream*) ;

__attribute__((used)) static snd_pcm_uframes_t snd_trident_spdif_pointer(struct snd_pcm_substream *substream)
{
 struct snd_trident *trident = snd_pcm_substream_chip(substream);
 struct snd_pcm_runtime *runtime = substream->runtime;
 struct snd_trident_voice *voice = runtime->private_data;
 unsigned int result;

 if (!voice->running)
  return 0;

 result = inl(TRID_REG(trident, NX_SPCTRL_SPCSO)) & 0x00ffffff;

 return result;
}
