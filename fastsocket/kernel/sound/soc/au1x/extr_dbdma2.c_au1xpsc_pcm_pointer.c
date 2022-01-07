
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_substream {int runtime; } ;
typedef int snd_pcm_uframes_t ;
struct TYPE_2__ {int pos; } ;


 size_t SUBSTREAM_TYPE (struct snd_pcm_substream*) ;
 TYPE_1__** au1xpsc_audio_pcmdma ;
 int bytes_to_frames (int ,int ) ;

__attribute__((used)) static snd_pcm_uframes_t
au1xpsc_pcm_pointer(struct snd_pcm_substream *substream)
{
 return bytes_to_frames(substream->runtime,
  au1xpsc_audio_pcmdma[SUBSTREAM_TYPE(substream)]->pos);
}
