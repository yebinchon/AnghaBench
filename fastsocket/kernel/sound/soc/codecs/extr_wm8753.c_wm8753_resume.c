
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct snd_soc_device {TYPE_1__* card; } ;
struct snd_soc_codec {int* reg_cache; scalar_t__ suspend_bias_level; int delayed_work; scalar_t__ bias_level; int control_data; int (* hw_write ) (int ,int*,int) ;int card; } ;
struct platform_device {int dummy; } ;
struct TYPE_2__ {struct snd_soc_codec* codec; } ;


 int ARRAY_SIZE (int*) ;
 scalar_t__ SND_SOC_BIAS_ON ;
 int SND_SOC_BIAS_PREPARE ;
 int SND_SOC_BIAS_STANDBY ;
 int WM8753_RESET ;
 int caps_charge ;
 int msecs_to_jiffies (int ) ;
 struct snd_soc_device* platform_get_drvdata (struct platform_device*) ;
 int schedule_delayed_work (int *,int ) ;
 int stub1 (int ,int*,int) ;
 int* wm8753_reg ;
 int wm8753_set_bias_level (struct snd_soc_codec*,int ) ;

__attribute__((used)) static int wm8753_resume(struct platform_device *pdev)
{
 struct snd_soc_device *socdev = platform_get_drvdata(pdev);
 struct snd_soc_codec *codec = socdev->card->codec;
 int i;
 u8 data[2];
 u16 *cache = codec->reg_cache;


 if (!codec->card)
  return 0;


 for (i = 0; i < ARRAY_SIZE(wm8753_reg); i++) {
  if (i + 1 == WM8753_RESET)
   continue;


  if (cache[i] == wm8753_reg[i])
   continue;

  data[0] = ((i + 1) << 1) | ((cache[i] >> 8) & 0x0001);
  data[1] = cache[i] & 0x00ff;
  codec->hw_write(codec->control_data, data, 2);
 }

 wm8753_set_bias_level(codec, SND_SOC_BIAS_STANDBY);


 if (codec->suspend_bias_level == SND_SOC_BIAS_ON) {
  wm8753_set_bias_level(codec, SND_SOC_BIAS_PREPARE);
  codec->bias_level = SND_SOC_BIAS_ON;
  schedule_delayed_work(&codec->delayed_work,
   msecs_to_jiffies(caps_charge));
 }

 return 0;
}
