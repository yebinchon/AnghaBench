
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm8940_priv {int codec; } ;


 int SND_SOC_BIAS_OFF ;
 int kfree (struct wm8940_priv*) ;
 int snd_soc_unregister_codec (int *) ;
 int snd_soc_unregister_dai (int *) ;
 int * wm8940_codec ;
 int wm8940_dai ;
 int wm8940_set_bias_level (int *,int ) ;

__attribute__((used)) static void wm8940_unregister(struct wm8940_priv *wm8940)
{
 wm8940_set_bias_level(&wm8940->codec, SND_SOC_BIAS_OFF);
 snd_soc_unregister_dai(&wm8940_dai);
 snd_soc_unregister_codec(&wm8940->codec);
 kfree(wm8940);
 wm8940_codec = ((void*)0);
}
