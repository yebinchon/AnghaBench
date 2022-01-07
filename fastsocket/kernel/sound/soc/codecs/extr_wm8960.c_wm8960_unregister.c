
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm8960_priv {int codec; } ;


 int SND_SOC_BIAS_OFF ;
 int kfree (struct wm8960_priv*) ;
 int snd_soc_unregister_codec (int *) ;
 int snd_soc_unregister_dai (int *) ;
 int * wm8960_codec ;
 int wm8960_dai ;
 int wm8960_set_bias_level (int *,int ) ;

__attribute__((used)) static void wm8960_unregister(struct wm8960_priv *wm8960)
{
 wm8960_set_bias_level(&wm8960->codec, SND_SOC_BIAS_OFF);
 snd_soc_unregister_dai(&wm8960_dai);
 snd_soc_unregister_codec(&wm8960->codec);
 kfree(wm8960);
 wm8960_codec = ((void*)0);
}
