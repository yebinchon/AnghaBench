
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int dummy; } ;
struct snd_ice1712 {int * capture_pro_substream; int pro_rate_default; } ;


 scalar_t__ PRO_RATE_RESET ;
 struct snd_ice1712* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 int snd_vt1724_set_pro_rate (struct snd_ice1712*,int ,int ) ;

__attribute__((used)) static int snd_vt1724_capture_pro_close(struct snd_pcm_substream *substream)
{
 struct snd_ice1712 *ice = snd_pcm_substream_chip(substream);

 if (PRO_RATE_RESET)
  snd_vt1724_set_pro_rate(ice, ice->pro_rate_default, 0);
 ice->capture_pro_substream = ((void*)0);
 return 0;
}
