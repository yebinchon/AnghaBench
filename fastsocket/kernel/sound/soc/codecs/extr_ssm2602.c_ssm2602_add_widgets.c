
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_codec {int dummy; } ;


 int ARRAY_SIZE (int ) ;
 int audio_conn ;
 int snd_soc_dapm_add_routes (struct snd_soc_codec*,int ,int ) ;
 int snd_soc_dapm_new_controls (struct snd_soc_codec*,int ,int ) ;
 int snd_soc_dapm_new_widgets (struct snd_soc_codec*) ;
 int ssm2602_dapm_widgets ;

__attribute__((used)) static int ssm2602_add_widgets(struct snd_soc_codec *codec)
{
 snd_soc_dapm_new_controls(codec, ssm2602_dapm_widgets,
      ARRAY_SIZE(ssm2602_dapm_widgets));

 snd_soc_dapm_add_routes(codec, audio_conn, ARRAY_SIZE(audio_conn));

 snd_soc_dapm_new_widgets(codec);
 return 0;
}
