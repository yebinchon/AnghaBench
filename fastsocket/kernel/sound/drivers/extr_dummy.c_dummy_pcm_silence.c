
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int dummy; } ;
typedef int snd_pcm_uframes_t ;



__attribute__((used)) static int dummy_pcm_silence(struct snd_pcm_substream *substream,
        int channel, snd_pcm_uframes_t pos,
        snd_pcm_uframes_t count)
{
 return 0;
}
