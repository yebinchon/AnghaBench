
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int dummy; } ;


 int snd_ali_capture ;
 int snd_ali_open (struct snd_pcm_substream*,int,int,int *) ;

__attribute__((used)) static int snd_ali_capture_open(struct snd_pcm_substream *substream)
{
 return snd_ali_open(substream, 1, -1, &snd_ali_capture);
}
