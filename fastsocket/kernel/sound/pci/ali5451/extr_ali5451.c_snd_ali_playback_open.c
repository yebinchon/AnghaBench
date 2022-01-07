
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int dummy; } ;


 int snd_ali_open (struct snd_pcm_substream*,int ,int,int *) ;
 int snd_ali_playback ;

__attribute__((used)) static int snd_ali_playback_open(struct snd_pcm_substream *substream)
{
 return snd_ali_open(substream, 0, -1, &snd_ali_playback);
}
