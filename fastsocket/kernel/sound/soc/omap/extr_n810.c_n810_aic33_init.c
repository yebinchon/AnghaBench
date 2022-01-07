
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_codec {int dummy; } ;


 int ARRAY_SIZE (int ) ;
 int aic33_dapm_widgets ;
 int aic33_n810_controls ;
 int audio_map ;
 int snd_soc_add_controls (struct snd_soc_codec*,int ,int ) ;
 int snd_soc_dapm_add_routes (struct snd_soc_codec*,int ,int ) ;
 int snd_soc_dapm_nc_pin (struct snd_soc_codec*,char*) ;
 int snd_soc_dapm_new_controls (struct snd_soc_codec*,int ,int ) ;
 int snd_soc_dapm_sync (struct snd_soc_codec*) ;

__attribute__((used)) static int n810_aic33_init(struct snd_soc_codec *codec)
{
 int err;


 snd_soc_dapm_nc_pin(codec, "MONO_LOUT");
 snd_soc_dapm_nc_pin(codec, "HPLCOM");
 snd_soc_dapm_nc_pin(codec, "HPRCOM");
 snd_soc_dapm_nc_pin(codec, "MIC3L");
 snd_soc_dapm_nc_pin(codec, "MIC3R");
 snd_soc_dapm_nc_pin(codec, "LINE1R");
 snd_soc_dapm_nc_pin(codec, "LINE2L");
 snd_soc_dapm_nc_pin(codec, "LINE2R");


 err = snd_soc_add_controls(codec, aic33_n810_controls,
    ARRAY_SIZE(aic33_n810_controls));
 if (err < 0)
  return err;


 snd_soc_dapm_new_controls(codec, aic33_dapm_widgets,
      ARRAY_SIZE(aic33_dapm_widgets));


 snd_soc_dapm_add_routes(codec, audio_map, ARRAY_SIZE(audio_map));

 snd_soc_dapm_sync(codec);

 return 0;
}
