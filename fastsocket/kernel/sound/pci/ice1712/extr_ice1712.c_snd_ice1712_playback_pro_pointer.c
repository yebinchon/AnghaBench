
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_substream {TYPE_1__* runtime; } ;
struct snd_ice1712 {int playback_pro_size; } ;
typedef int snd_pcm_uframes_t ;
struct TYPE_2__ {size_t buffer_size; } ;


 int ICE1712_PLAYBACK_START ;
 int ICEMT (struct snd_ice1712*,int ) ;
 int PLAYBACK_CONTROL ;
 int PLAYBACK_SIZE ;
 int bytes_to_frames (TYPE_1__*,size_t) ;
 int inl (int ) ;
 int inw (int ) ;
 struct snd_ice1712* snd_pcm_substream_chip (struct snd_pcm_substream*) ;

__attribute__((used)) static snd_pcm_uframes_t snd_ice1712_playback_pro_pointer(struct snd_pcm_substream *substream)
{
 struct snd_ice1712 *ice = snd_pcm_substream_chip(substream);
 size_t ptr;

 if (!(inl(ICEMT(ice, PLAYBACK_CONTROL)) & ICE1712_PLAYBACK_START))
  return 0;
 ptr = ice->playback_pro_size - (inw(ICEMT(ice, PLAYBACK_SIZE)) << 2);
 if (ptr == substream->runtime->buffer_size)
  ptr = 0;
 return bytes_to_frames(substream->runtime, ptr);
}
