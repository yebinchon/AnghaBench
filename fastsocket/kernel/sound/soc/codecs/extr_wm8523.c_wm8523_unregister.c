
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm8523_priv {int codec; int supplies; } ;


 int ARRAY_SIZE (int ) ;
 int SND_SOC_BIAS_OFF ;
 int kfree (struct wm8523_priv*) ;
 int regulator_bulk_free (int ,int ) ;
 int snd_soc_unregister_codec (int *) ;
 int snd_soc_unregister_dai (int *) ;
 int * wm8523_codec ;
 int wm8523_dai ;
 int wm8523_set_bias_level (int *,int ) ;

__attribute__((used)) static void wm8523_unregister(struct wm8523_priv *wm8523)
{
 wm8523_set_bias_level(&wm8523->codec, SND_SOC_BIAS_OFF);
 regulator_bulk_free(ARRAY_SIZE(wm8523->supplies), wm8523->supplies);
 snd_soc_unregister_dai(&wm8523_dai);
 snd_soc_unregister_codec(&wm8523->codec);
 kfree(wm8523);
 wm8523_codec = ((void*)0);
}
