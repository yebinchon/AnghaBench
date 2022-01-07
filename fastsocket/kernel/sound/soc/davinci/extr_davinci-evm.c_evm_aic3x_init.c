
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_codec {int dummy; } ;


 int ARRAY_SIZE (int ) ;
 int aic3x_dapm_widgets ;
 int audio_map ;
 int snd_soc_dapm_add_routes (struct snd_soc_codec*,int ,int ) ;
 int snd_soc_dapm_disable_pin (struct snd_soc_codec*,char*) ;
 int snd_soc_dapm_enable_pin (struct snd_soc_codec*,char*) ;
 int snd_soc_dapm_new_controls (struct snd_soc_codec*,int ,int ) ;
 int snd_soc_dapm_sync (struct snd_soc_codec*) ;

__attribute__((used)) static int evm_aic3x_init(struct snd_soc_codec *codec)
{

 snd_soc_dapm_new_controls(codec, aic3x_dapm_widgets,
      ARRAY_SIZE(aic3x_dapm_widgets));


 snd_soc_dapm_add_routes(codec, audio_map, ARRAY_SIZE(audio_map));


 snd_soc_dapm_disable_pin(codec, "MONO_LOUT");
 snd_soc_dapm_disable_pin(codec, "HPLCOM");
 snd_soc_dapm_disable_pin(codec, "HPRCOM");


 snd_soc_dapm_enable_pin(codec, "Headphone Jack");
 snd_soc_dapm_enable_pin(codec, "Line Out");
 snd_soc_dapm_enable_pin(codec, "Mic Jack");
 snd_soc_dapm_enable_pin(codec, "Line In");

 snd_soc_dapm_sync(codec);

 return 0;
}
