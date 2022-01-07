
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm8580_priv {int supplies; int codec; } ;


 int ARRAY_SIZE (int ) ;
 int SND_SOC_BIAS_OFF ;
 int kfree (struct wm8580_priv*) ;
 int regulator_bulk_disable (int ,int ) ;
 int regulator_bulk_free (int ,int ) ;
 int snd_soc_unregister_codec (int *) ;
 int snd_soc_unregister_dais (int ,int ) ;
 int * wm8580_codec ;
 int wm8580_dai ;
 int wm8580_set_bias_level (int *,int ) ;

__attribute__((used)) static void wm8580_unregister(struct wm8580_priv *wm8580)
{
 wm8580_set_bias_level(&wm8580->codec, SND_SOC_BIAS_OFF);
 snd_soc_unregister_dais(wm8580_dai, ARRAY_SIZE(wm8580_dai));
 snd_soc_unregister_codec(&wm8580->codec);
 regulator_bulk_disable(ARRAY_SIZE(wm8580->supplies), wm8580->supplies);
 regulator_bulk_free(ARRAY_SIZE(wm8580->supplies), wm8580->supplies);
 kfree(wm8580);
 wm8580_codec = ((void*)0);
}
