
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int dummy; } ;
struct snd_amd7930 {int * capture_substream; } ;


 struct snd_amd7930* snd_pcm_substream_chip (struct snd_pcm_substream*) ;

__attribute__((used)) static int snd_amd7930_capture_close(struct snd_pcm_substream *substream)
{
 struct snd_amd7930 *amd = snd_pcm_substream_chip(substream);

 amd->capture_substream = ((void*)0);
 return 0;
}
