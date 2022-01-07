
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int dummy; } ;
struct snd_ad1889 {int * csubs; } ;


 struct snd_ad1889* snd_pcm_substream_chip (struct snd_pcm_substream*) ;

__attribute__((used)) static int
snd_ad1889_capture_close(struct snd_pcm_substream *ss)
{
 struct snd_ad1889 *chip = snd_pcm_substream_chip(ss);
 chip->csubs = ((void*)0);
 return 0;
}
