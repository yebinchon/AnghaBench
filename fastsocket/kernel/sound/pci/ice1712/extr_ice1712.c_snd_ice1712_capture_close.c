
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int dummy; } ;
struct snd_ice1712 {int * capture_con_substream; } ;


 struct snd_ice1712* snd_pcm_substream_chip (struct snd_pcm_substream*) ;

__attribute__((used)) static int snd_ice1712_capture_close(struct snd_pcm_substream *substream)
{
 struct snd_ice1712 *ice = snd_pcm_substream_chip(substream);

 ice->capture_con_substream = ((void*)0);
 return 0;
}
