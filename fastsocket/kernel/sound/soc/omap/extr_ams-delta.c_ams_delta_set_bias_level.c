
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_codec {int bias_level; } ;
struct snd_soc_card {struct snd_soc_codec* codec; } ;
typedef enum snd_soc_bias_level { ____Placeholder_snd_soc_bias_level } snd_soc_bias_level ;


 int AMS_DELTA_LATCH2_MODEM_NRESET ;




 int ams_delta_latch2_write (int ,int ) ;

__attribute__((used)) static int ams_delta_set_bias_level(struct snd_soc_card *card,
     enum snd_soc_bias_level level)
{
 struct snd_soc_codec *codec = card->codec;

 switch (level) {
 case 130:
 case 129:
 case 128:
  if (codec->bias_level == 131)
   ams_delta_latch2_write(AMS_DELTA_LATCH2_MODEM_NRESET,
      AMS_DELTA_LATCH2_MODEM_NRESET);
  break;
 case 131:
  if (codec->bias_level != 131)
   ams_delta_latch2_write(AMS_DELTA_LATCH2_MODEM_NRESET,
      0);
 }
 codec->bias_level = level;

 return 0;
}
