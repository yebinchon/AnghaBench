
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm8988_priv {int codec; } ;


 int SND_SOC_BIAS_OFF ;
 int kfree (struct wm8988_priv*) ;
 int snd_soc_unregister_codec (int *) ;
 int snd_soc_unregister_dai (int *) ;
 int * wm8988_codec ;
 int wm8988_dai ;
 int wm8988_set_bias_level (int *,int ) ;

__attribute__((used)) static void wm8988_unregister(struct wm8988_priv *wm8988)
{
 wm8988_set_bias_level(&wm8988->codec, SND_SOC_BIAS_OFF);
 snd_soc_unregister_dai(&wm8988_dai);
 snd_soc_unregister_codec(&wm8988->codec);
 kfree(wm8988);
 wm8988_codec = ((void*)0);
}
