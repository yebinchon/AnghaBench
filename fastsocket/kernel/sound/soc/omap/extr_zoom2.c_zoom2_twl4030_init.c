
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_codec {int dummy; } ;


 int ARRAY_SIZE (int ) ;
 int audio_map ;
 int snd_soc_dapm_add_routes (struct snd_soc_codec*,int ,int ) ;
 int snd_soc_dapm_enable_pin (struct snd_soc_codec*,char*) ;
 int snd_soc_dapm_nc_pin (struct snd_soc_codec*,char*) ;
 int snd_soc_dapm_new_controls (struct snd_soc_codec*,int ,int ) ;
 int snd_soc_dapm_sync (struct snd_soc_codec*) ;
 int zoom2_twl4030_dapm_widgets ;

__attribute__((used)) static int zoom2_twl4030_init(struct snd_soc_codec *codec)
{
 int ret;


 ret = snd_soc_dapm_new_controls(codec, zoom2_twl4030_dapm_widgets,
    ARRAY_SIZE(zoom2_twl4030_dapm_widgets));
 if (ret)
  return ret;


 snd_soc_dapm_add_routes(codec, audio_map, ARRAY_SIZE(audio_map));


 snd_soc_dapm_enable_pin(codec, "Ext Mic");
 snd_soc_dapm_enable_pin(codec, "Ext Spk");
 snd_soc_dapm_enable_pin(codec, "Headset Mic");
 snd_soc_dapm_enable_pin(codec, "Headset Stereophone");
 snd_soc_dapm_enable_pin(codec, "Aux In");


 snd_soc_dapm_nc_pin(codec, "CARKITMIC");
 snd_soc_dapm_nc_pin(codec, "DIGIMIC0");
 snd_soc_dapm_nc_pin(codec, "DIGIMIC1");

 snd_soc_dapm_nc_pin(codec, "OUTL");
 snd_soc_dapm_nc_pin(codec, "OUTR");
 snd_soc_dapm_nc_pin(codec, "EARPIECE");
 snd_soc_dapm_nc_pin(codec, "PREDRIVEL");
 snd_soc_dapm_nc_pin(codec, "PREDRIVER");
 snd_soc_dapm_nc_pin(codec, "CARKITL");
 snd_soc_dapm_nc_pin(codec, "CARKITR");

 ret = snd_soc_dapm_sync(codec);

 return ret;
}
