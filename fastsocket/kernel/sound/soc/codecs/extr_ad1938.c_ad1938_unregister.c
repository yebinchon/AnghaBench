
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ad1938_priv {int codec; } ;


 int SND_SOC_BIAS_OFF ;
 int * ad1938_codec ;
 int ad1938_dai ;
 int ad1938_set_bias_level (int *,int ) ;
 int kfree (struct ad1938_priv*) ;
 int snd_soc_unregister_codec (int *) ;
 int snd_soc_unregister_dai (int *) ;

__attribute__((used)) static void ad1938_unregister(struct ad1938_priv *ad1938)
{
 ad1938_set_bias_level(&ad1938->codec, SND_SOC_BIAS_OFF);
 snd_soc_unregister_dai(&ad1938_dai);
 snd_soc_unregister_codec(&ad1938->codec);
 kfree(ad1938);
 ad1938_codec = ((void*)0);
}
