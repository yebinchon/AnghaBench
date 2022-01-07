
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int dummy; } ;


 int snd_ps3_mute (int) ;

__attribute__((used)) static int snd_ps3_pcm_close(struct snd_pcm_substream *substream)
{

 snd_ps3_mute(1);
 return 0;
}
