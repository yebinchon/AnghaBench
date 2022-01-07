
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_codec {int card; } ;


 int ARRAY_SIZE (int ) ;
 int aic3x_dapm_widgets ;
 int audio_map ;
 int audio_out_mux ;
 int snd_ctl_add (int ,int ) ;
 int snd_ctl_new1 (int *,struct snd_soc_codec*) ;
 int snd_soc_dapm_add_routes (struct snd_soc_codec*,int ,int ) ;
 int snd_soc_dapm_disable_pin (struct snd_soc_codec*,char*) ;
 int snd_soc_dapm_enable_pin (struct snd_soc_codec*,char*) ;
 int snd_soc_dapm_nc_pin (struct snd_soc_codec*,char*) ;
 int snd_soc_dapm_new_controls (struct snd_soc_codec*,int ,int ) ;
 int snd_soc_dapm_sync (struct snd_soc_codec*) ;

__attribute__((used)) static int s6105_aic3x_init(struct snd_soc_codec *codec)
{

 snd_soc_dapm_new_controls(codec, aic3x_dapm_widgets,
      ARRAY_SIZE(aic3x_dapm_widgets));


 snd_soc_dapm_add_routes(codec, audio_map, ARRAY_SIZE(audio_map));


 snd_soc_dapm_nc_pin(codec, "MONO_LOUT");
 snd_soc_dapm_nc_pin(codec, "LINE2L");
 snd_soc_dapm_nc_pin(codec, "LINE2R");


 snd_soc_dapm_nc_pin(codec, "MIC3L");
 snd_soc_dapm_nc_pin(codec, "MIC3R");
 snd_soc_dapm_nc_pin(codec, "LLOUT");
 snd_soc_dapm_nc_pin(codec, "RLOUT");
 snd_soc_dapm_nc_pin(codec, "HPRCOM");


 snd_soc_dapm_enable_pin(codec, "Audio In");


 snd_soc_dapm_disable_pin(codec, "Audio Out Differential");
 snd_soc_dapm_sync(codec);
 snd_soc_dapm_enable_pin(codec, "Audio Out Stereo");

 snd_soc_dapm_sync(codec);

 snd_ctl_add(codec->card, snd_ctl_new1(&audio_out_mux, codec));

 return 0;
}
