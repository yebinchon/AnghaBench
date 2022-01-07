
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_codec {int dummy; } ;


 int ARRAY_SIZE (int ) ;
 int base_map ;
 int dapm_widgets ;
 int simtec_audio_init (struct snd_soc_codec*) ;
 int snd_soc_dapm_add_routes (struct snd_soc_codec*,int ,int ) ;
 int snd_soc_dapm_enable_pin (struct snd_soc_codec*,char*) ;
 int snd_soc_dapm_new_controls (struct snd_soc_codec*,int ,int ) ;
 int snd_soc_dapm_sync (struct snd_soc_codec*) ;

__attribute__((used)) static int simtec_tlv320aic23_init(struct snd_soc_codec *codec)
{
 snd_soc_dapm_new_controls(codec, dapm_widgets,
      ARRAY_SIZE(dapm_widgets));

 snd_soc_dapm_add_routes(codec, base_map, ARRAY_SIZE(base_map));

 snd_soc_dapm_enable_pin(codec, "Headphone Jack");
 snd_soc_dapm_enable_pin(codec, "Line In");
 snd_soc_dapm_enable_pin(codec, "Line Out");
 snd_soc_dapm_enable_pin(codec, "Mic Jack");

 simtec_audio_init(codec);
 snd_soc_dapm_sync(codec);

 return 0;
}
