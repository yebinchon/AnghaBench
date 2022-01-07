
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int dummy; } ;


 int snd_ca0106_pcm_open_capture_channel (struct snd_pcm_substream*,int) ;

__attribute__((used)) static int snd_ca0106_pcm_open_2_capture(struct snd_pcm_substream *substream)
{
 return snd_ca0106_pcm_open_capture_channel(substream, 2);
}
