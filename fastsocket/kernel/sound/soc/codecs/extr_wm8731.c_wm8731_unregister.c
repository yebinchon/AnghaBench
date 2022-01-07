
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm8731_priv {int codec; } ;


 int SND_SOC_BIAS_OFF ;
 int kfree (struct wm8731_priv*) ;
 int snd_soc_unregister_codec (int *) ;
 int snd_soc_unregister_dai (int *) ;
 int * wm8731_codec ;
 int wm8731_dai ;
 int wm8731_set_bias_level (int *,int ) ;

__attribute__((used)) static void wm8731_unregister(struct wm8731_priv *wm8731)
{
 wm8731_set_bias_level(&wm8731->codec, SND_SOC_BIAS_OFF);
 snd_soc_unregister_dai(&wm8731_dai);
 snd_soc_unregister_codec(&wm8731->codec);
 kfree(wm8731);
 wm8731_codec = ((void*)0);
}
