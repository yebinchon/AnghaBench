
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int dummy; } ;


 int snd_pcm_lib_free_pages (struct snd_pcm_substream*) ;

__attribute__((used)) static int usb6fire_pcm_hw_free(struct snd_pcm_substream *alsa_sub)
{
 return snd_pcm_lib_free_pages(alsa_sub);
}
