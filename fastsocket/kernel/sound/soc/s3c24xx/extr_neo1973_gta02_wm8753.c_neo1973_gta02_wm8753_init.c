
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_codec {int dummy; } ;


 int ARRAY_SIZE (int ) ;
 int audio_map ;
 int snd_soc_add_controls (struct snd_soc_codec*,int ,int ) ;
 int snd_soc_dapm_add_routes (struct snd_soc_codec*,int ,int ) ;
 int snd_soc_dapm_disable_pin (struct snd_soc_codec*,char*) ;
 int snd_soc_dapm_nc_pin (struct snd_soc_codec*,char*) ;
 int snd_soc_dapm_new_controls (struct snd_soc_codec*,int ,int ) ;
 int snd_soc_dapm_sync (struct snd_soc_codec*) ;
 int wm8753_dapm_widgets ;
 int wm8753_neo1973_gta02_controls ;

__attribute__((used)) static int neo1973_gta02_wm8753_init(struct snd_soc_codec *codec)
{
 int err;


 snd_soc_dapm_nc_pin(codec, "OUT3");
 snd_soc_dapm_nc_pin(codec, "OUT4");
 snd_soc_dapm_nc_pin(codec, "LINE1");
 snd_soc_dapm_nc_pin(codec, "LINE2");


 snd_soc_dapm_new_controls(codec, wm8753_dapm_widgets,
      ARRAY_SIZE(wm8753_dapm_widgets));


 err = snd_soc_add_controls(codec, wm8753_neo1973_gta02_controls,
  ARRAY_SIZE(wm8753_neo1973_gta02_controls));

 if (err < 0)
  return err;


 snd_soc_dapm_add_routes(codec, audio_map, ARRAY_SIZE(audio_map));


 snd_soc_dapm_disable_pin(codec, "Stereo Out");
 snd_soc_dapm_disable_pin(codec, "GSM Line Out");
 snd_soc_dapm_disable_pin(codec, "GSM Line In");
 snd_soc_dapm_disable_pin(codec, "Headset Mic");
 snd_soc_dapm_disable_pin(codec, "Handset Mic");
 snd_soc_dapm_disable_pin(codec, "Handset Spk");

 snd_soc_dapm_sync(codec);

 return 0;
}
