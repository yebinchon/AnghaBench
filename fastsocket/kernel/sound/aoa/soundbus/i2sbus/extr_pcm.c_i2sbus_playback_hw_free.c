
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int dummy; } ;


 int i2sbus_hw_free (struct snd_pcm_substream*,int ) ;

__attribute__((used)) static int i2sbus_playback_hw_free(struct snd_pcm_substream *substream)
{
 return i2sbus_hw_free(substream, 0);
}
