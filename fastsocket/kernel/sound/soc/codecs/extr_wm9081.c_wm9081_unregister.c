
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm9081_priv {int codec; } ;


 int SND_SOC_BIAS_OFF ;
 int kfree (struct wm9081_priv*) ;
 int snd_soc_unregister_codec (int *) ;
 int snd_soc_unregister_dai (int *) ;
 int * wm9081_codec ;
 int wm9081_dai ;
 int wm9081_set_bias_level (int *,int ) ;

__attribute__((used)) static void wm9081_unregister(struct wm9081_priv *wm9081)
{
 wm9081_set_bias_level(&wm9081->codec, SND_SOC_BIAS_OFF);
 snd_soc_unregister_dai(&wm9081_dai);
 snd_soc_unregister_codec(&wm9081->codec);
 kfree(wm9081);
 wm9081_codec = ((void*)0);
}
