
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aic3x_priv {int codec; } ;


 int SND_SOC_BIAS_OFF ;
 int * aic3x_codec ;
 int aic3x_dai ;
 int aic3x_set_bias_level (int *,int ) ;
 int kfree (struct aic3x_priv*) ;
 int snd_soc_unregister_codec (int *) ;
 int snd_soc_unregister_dai (int *) ;

__attribute__((used)) static int aic3x_unregister(struct aic3x_priv *aic3x)
{
 aic3x_set_bias_level(&aic3x->codec, SND_SOC_BIAS_OFF);

 snd_soc_unregister_dai(&aic3x_dai);
 snd_soc_unregister_codec(&aic3x->codec);

 kfree(aic3x);
 aic3x_codec = ((void*)0);

 return 0;
}
