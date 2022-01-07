
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_codec {int dai; } ;


 int ARRAY_SIZE (int *) ;
 int WM8510_OPCLKDIV ;
 int WM8510_OPCLKDIV_1 ;
 int * intercon ;
 int * playpaq_dapm_widgets ;
 int snd_soc_dai_set_clkdiv (int ,int ,int) ;
 int snd_soc_dapm_add_routes (struct snd_soc_codec*,int *,int) ;
 int snd_soc_dapm_enable_pin (struct snd_soc_codec*,char*) ;
 int snd_soc_dapm_new_control (struct snd_soc_codec*,int *) ;
 int snd_soc_dapm_sync (struct snd_soc_codec*) ;

__attribute__((used)) static int playpaq_wm8510_init(struct snd_soc_codec *codec)
{
 int i;




 for (i = 0; i < ARRAY_SIZE(playpaq_dapm_widgets); i++)
  snd_soc_dapm_new_control(codec, &playpaq_dapm_widgets[i]);






 snd_soc_dapm_add_routes(codec, intercon, ARRAY_SIZE(intercon));




 snd_soc_dapm_enable_pin(codec, "Int Mic");
 snd_soc_dapm_enable_pin(codec, "Ext Spk");
 snd_soc_dapm_sync(codec);




 snd_soc_dai_set_clkdiv(codec->dai, WM8510_OPCLKDIV,
           WM8510_OPCLKDIV_1 | 4);

 return 0;
}
