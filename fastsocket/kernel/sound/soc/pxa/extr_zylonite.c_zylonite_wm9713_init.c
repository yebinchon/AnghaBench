
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_codec {int * dai; } ;


 int ARRAY_SIZE (int ) ;
 int audio_map ;
 int clk_get_rate (int ) ;
 scalar_t__ clk_pout ;
 int pout ;
 int snd_soc_dai_set_pll (int *,int ,int ,int ) ;
 int snd_soc_dapm_add_routes (struct snd_soc_codec*,int ,int ) ;
 int snd_soc_dapm_enable_pin (struct snd_soc_codec*,char*) ;
 int snd_soc_dapm_new_controls (struct snd_soc_codec*,int ,int ) ;
 int snd_soc_dapm_sync (struct snd_soc_codec*) ;
 int zylonite_dapm_widgets ;

__attribute__((used)) static int zylonite_wm9713_init(struct snd_soc_codec *codec)
{
 if (clk_pout)
  snd_soc_dai_set_pll(&codec->dai[0], 0, clk_get_rate(pout), 0);

 snd_soc_dapm_new_controls(codec, zylonite_dapm_widgets,
      ARRAY_SIZE(zylonite_dapm_widgets));

 snd_soc_dapm_add_routes(codec, audio_map, ARRAY_SIZE(audio_map));


 snd_soc_dapm_enable_pin(codec, "Headphone");
 snd_soc_dapm_enable_pin(codec, "Headset Earpiece");

 snd_soc_dapm_sync(codec);
 return 0;
}
