
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int delayed_work; } ;
struct wm8753_priv {TYPE_1__ codec; } ;


 int ARRAY_SIZE (int *) ;
 int SND_SOC_BIAS_OFF ;
 int kfree (struct wm8753_priv*) ;
 int run_delayed_work (int *) ;
 int snd_soc_unregister_codec (TYPE_1__*) ;
 int snd_soc_unregister_dais (int *,int ) ;
 int * wm8753_codec ;
 int * wm8753_dai ;
 int wm8753_set_bias_level (TYPE_1__*,int ) ;

__attribute__((used)) static void wm8753_unregister(struct wm8753_priv *wm8753)
{
 wm8753_set_bias_level(&wm8753->codec, SND_SOC_BIAS_OFF);
 run_delayed_work(&wm8753->codec.delayed_work);
 snd_soc_unregister_dais(&wm8753_dai[0], ARRAY_SIZE(wm8753_dai));
 snd_soc_unregister_codec(&wm8753->codec);
 kfree(wm8753);
 wm8753_codec = ((void*)0);
}
