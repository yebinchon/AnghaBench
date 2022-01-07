
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm8961_priv {int codec; } ;


 int SND_SOC_BIAS_OFF ;
 int kfree (struct wm8961_priv*) ;
 int snd_soc_unregister_codec (int *) ;
 int snd_soc_unregister_dai (int *) ;
 int * wm8961_codec ;
 int wm8961_dai ;
 int wm8961_set_bias_level (int *,int ) ;

__attribute__((used)) static void wm8961_unregister(struct wm8961_priv *wm8961)
{
 wm8961_set_bias_level(&wm8961->codec, SND_SOC_BIAS_OFF);
 snd_soc_unregister_dai(&wm8961_dai);
 snd_soc_unregister_codec(&wm8961->codec);
 kfree(wm8961);
 wm8961_codec = ((void*)0);
}
