
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct twl4030_priv {int bypass_state; } ;
struct snd_soc_codec {int bias_level; struct twl4030_priv* private_data; } ;
typedef enum snd_soc_bias_level { ____Placeholder_snd_soc_bias_level } snd_soc_bias_level ;






 int twl4030_codec_mute (struct snd_soc_codec*,int) ;
 int twl4030_power_down (struct snd_soc_codec*) ;
 int twl4030_power_up (struct snd_soc_codec*) ;

__attribute__((used)) static int twl4030_set_bias_level(struct snd_soc_codec *codec,
      enum snd_soc_bias_level level)
{
 struct twl4030_priv *twl4030 = codec->private_data;

 switch (level) {
 case 130:
  twl4030_codec_mute(codec, 0);
  break;
 case 129:
  twl4030_power_up(codec);
  if (twl4030->bypass_state)
   twl4030_codec_mute(codec, 0);
  else
   twl4030_codec_mute(codec, 1);
  break;
 case 128:
  twl4030_power_up(codec);
  if (twl4030->bypass_state)
   twl4030_codec_mute(codec, 0);
  else
   twl4030_codec_mute(codec, 1);
  break;
 case 131:
  twl4030_power_down(codec);
  break;
 }
 codec->bias_level = level;

 return 0;
}
