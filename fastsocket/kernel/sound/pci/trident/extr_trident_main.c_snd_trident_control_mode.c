
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int channels; int format; } ;


 scalar_t__ snd_pcm_format_signed (int ) ;
 int snd_pcm_format_width (int ) ;

__attribute__((used)) static unsigned int snd_trident_control_mode(struct snd_pcm_substream *substream)
{
 unsigned int CTRL;
 struct snd_pcm_runtime *runtime = substream->runtime;




 CTRL = 0x00000001;
 if (snd_pcm_format_width(runtime->format) == 16)
  CTRL |= 0x00000008;
 if (snd_pcm_format_signed(runtime->format))
  CTRL |= 0x00000002;
 if (runtime->channels > 1)
  CTRL |= 0x00000004;
 return CTRL;
}
