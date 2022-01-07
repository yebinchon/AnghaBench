
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int dummy; } ;
struct snd_ice1712 {int * capture_pro_substream; } ;


 int PRO_RATE_DEFAULT ;
 scalar_t__ PRO_RATE_RESET ;
 int snd_ice1712_set_pro_rate (struct snd_ice1712*,int ,int ) ;
 struct snd_ice1712* snd_pcm_substream_chip (struct snd_pcm_substream*) ;

__attribute__((used)) static int snd_ice1712_capture_pro_close(struct snd_pcm_substream *substream)
{
 struct snd_ice1712 *ice = snd_pcm_substream_chip(substream);

 if (PRO_RATE_RESET)
  snd_ice1712_set_pro_rate(ice, PRO_RATE_DEFAULT, 0);
 ice->capture_pro_substream = ((void*)0);
 return 0;
}
