
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_codec {int dummy; } ;


 int ARRAY_SIZE (int ) ;
 int audio_map ;
 int snd_soc_dapm_add_routes (struct snd_soc_codec*,int ,int ) ;
 int snd_soc_dapm_enable_pin (struct snd_soc_codec*,char*) ;
 int snd_soc_dapm_new_controls (struct snd_soc_codec*,int ,int ) ;
 int snd_soc_dapm_sync (struct snd_soc_codec*) ;
 int tlv320aic23_dapm_widgets ;

__attribute__((used)) static int osk_tlv320aic23_init(struct snd_soc_codec *codec)
{


 snd_soc_dapm_new_controls(codec, tlv320aic23_dapm_widgets,
      ARRAY_SIZE(tlv320aic23_dapm_widgets));


 snd_soc_dapm_add_routes(codec, audio_map, ARRAY_SIZE(audio_map));

 snd_soc_dapm_enable_pin(codec, "Headphone Jack");
 snd_soc_dapm_enable_pin(codec, "Line In");
 snd_soc_dapm_enable_pin(codec, "Mic Jack");

 snd_soc_dapm_sync(codec);

 return 0;
}
