
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm8776_priv {int codec; } ;


 int ARRAY_SIZE (int ) ;
 int SND_SOC_BIAS_OFF ;
 int kfree (struct wm8776_priv*) ;
 int snd_soc_unregister_codec (int *) ;
 int snd_soc_unregister_dais (int ,int ) ;
 int * wm8776_codec ;
 int wm8776_dai ;
 int wm8776_set_bias_level (int *,int ) ;

__attribute__((used)) static void wm8776_unregister(struct wm8776_priv *wm8776)
{
 wm8776_set_bias_level(&wm8776->codec, SND_SOC_BIAS_OFF);
 snd_soc_unregister_dais(wm8776_dai, ARRAY_SIZE(wm8776_dai));
 snd_soc_unregister_codec(&wm8776->codec);
 kfree(wm8776);
 wm8776_codec = ((void*)0);
}
