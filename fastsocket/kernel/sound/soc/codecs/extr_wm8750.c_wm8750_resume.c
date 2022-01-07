
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct snd_soc_device {TYPE_1__* card; } ;
struct snd_soc_codec {int* reg_cache; scalar_t__ suspend_bias_level; int delayed_work; scalar_t__ bias_level; int control_data; int (* hw_write ) (int ,int*,int) ;} ;
struct platform_device {int dummy; } ;
struct TYPE_2__ {struct snd_soc_codec* codec; } ;


 int ARRAY_SIZE (int ) ;
 scalar_t__ SND_SOC_BIAS_ON ;
 int SND_SOC_BIAS_PREPARE ;
 int SND_SOC_BIAS_STANDBY ;
 int WM8750_RESET ;
 int msecs_to_jiffies (int) ;
 struct snd_soc_device* platform_get_drvdata (struct platform_device*) ;
 int schedule_delayed_work (int *,int ) ;
 int stub1 (int ,int*,int) ;
 int wm8750_reg ;
 int wm8750_set_bias_level (struct snd_soc_codec*,int ) ;

__attribute__((used)) static int wm8750_resume(struct platform_device *pdev)
{
 struct snd_soc_device *socdev = platform_get_drvdata(pdev);
 struct snd_soc_codec *codec = socdev->card->codec;
 int i;
 u8 data[2];
 u16 *cache = codec->reg_cache;


 for (i = 0; i < ARRAY_SIZE(wm8750_reg); i++) {
  if (i == WM8750_RESET)
   continue;
  data[0] = (i << 1) | ((cache[i] >> 8) & 0x0001);
  data[1] = cache[i] & 0x00ff;
  codec->hw_write(codec->control_data, data, 2);
 }

 wm8750_set_bias_level(codec, SND_SOC_BIAS_STANDBY);


 if (codec->suspend_bias_level == SND_SOC_BIAS_ON) {
  wm8750_set_bias_level(codec, SND_SOC_BIAS_PREPARE);
  codec->bias_level = SND_SOC_BIAS_ON;
  schedule_delayed_work(&codec->delayed_work,
     msecs_to_jiffies(1000));
 }

 return 0;
}
