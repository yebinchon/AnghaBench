
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_trident_voice {int running; } ;
struct snd_trident {int dummy; } ;
struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int channels; unsigned int buffer_size; struct snd_trident_voice* private_data; } ;
typedef unsigned int snd_pcm_uframes_t ;


 int T4D_SBBL_SBCL ;
 int TRID_REG (struct snd_trident*,int ) ;
 unsigned int inw (int ) ;
 struct snd_trident* snd_pcm_substream_chip (struct snd_pcm_substream*) ;

__attribute__((used)) static snd_pcm_uframes_t snd_trident_capture_pointer(struct snd_pcm_substream *substream)
{
 struct snd_trident *trident = snd_pcm_substream_chip(substream);
 struct snd_pcm_runtime *runtime = substream->runtime;
 struct snd_trident_voice *voice = runtime->private_data;
 unsigned int result;

 if (!voice->running)
  return 0;

 result = inw(TRID_REG(trident, T4D_SBBL_SBCL));
 if (runtime->channels > 1)
  result >>= 1;
 if (result > 0)
  result = runtime->buffer_size - result;

 return result;
}
