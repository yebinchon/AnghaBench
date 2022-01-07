
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_codec {int dummy; } ;


 int ARRAY_SIZE (int ) ;
 int audio_map ;
 int snd_soc_add_controls (struct snd_soc_codec*,int ,int ) ;
 int snd_soc_dapm_add_routes (struct snd_soc_codec*,int ,int ) ;
 int snd_soc_dapm_nc_pin (struct snd_soc_codec*,char*) ;
 int snd_soc_dapm_new_controls (struct snd_soc_codec*,int ,int ) ;
 int snd_soc_dapm_sync (struct snd_soc_codec*) ;
 int wm8750_dapm_widgets ;
 int wm8750_spitz_controls ;

__attribute__((used)) static int spitz_wm8750_init(struct snd_soc_codec *codec)
{
 int err;


 snd_soc_dapm_nc_pin(codec, "RINPUT1");
 snd_soc_dapm_nc_pin(codec, "LINPUT2");
 snd_soc_dapm_nc_pin(codec, "RINPUT2");
 snd_soc_dapm_nc_pin(codec, "LINPUT3");
 snd_soc_dapm_nc_pin(codec, "RINPUT3");
 snd_soc_dapm_nc_pin(codec, "OUT3");
 snd_soc_dapm_nc_pin(codec, "MONO1");


 err = snd_soc_add_controls(codec, wm8750_spitz_controls,
    ARRAY_SIZE(wm8750_spitz_controls));
 if (err < 0)
  return err;


 snd_soc_dapm_new_controls(codec, wm8750_dapm_widgets,
      ARRAY_SIZE(wm8750_dapm_widgets));


 snd_soc_dapm_add_routes(codec, audio_map, ARRAY_SIZE(audio_map));

 snd_soc_dapm_sync(codec);
 return 0;
}
