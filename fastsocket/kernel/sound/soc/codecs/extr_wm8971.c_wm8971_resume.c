
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
 int SND_SOC_BIAS_STANDBY ;
 int WM8971_PWR1 ;
 int WM8971_RESET ;
 int msecs_to_jiffies (int) ;
 struct snd_soc_device* platform_get_drvdata (struct platform_device*) ;
 int queue_delayed_work (int ,int *,int ) ;
 int snd_soc_read (struct snd_soc_codec*,int ) ;
 int snd_soc_write (struct snd_soc_codec*,int ,int) ;
 int stub1 (int ,int*,int) ;
 int wm8971_reg ;
 int wm8971_set_bias_level (struct snd_soc_codec*,int ) ;
 int wm8971_workq ;

__attribute__((used)) static int wm8971_resume(struct platform_device *pdev)
{
 struct snd_soc_device *socdev = platform_get_drvdata(pdev);
 struct snd_soc_codec *codec = socdev->card->codec;
 int i;
 u8 data[2];
 u16 *cache = codec->reg_cache;
 u16 reg;


 for (i = 0; i < ARRAY_SIZE(wm8971_reg); i++) {
  if (i + 1 == WM8971_RESET)
   continue;
  data[0] = (i << 1) | ((cache[i] >> 8) & 0x0001);
  data[1] = cache[i] & 0x00ff;
  codec->hw_write(codec->control_data, data, 2);
 }

 wm8971_set_bias_level(codec, SND_SOC_BIAS_STANDBY);


 if (codec->suspend_bias_level == SND_SOC_BIAS_ON) {
  reg = snd_soc_read(codec, WM8971_PWR1) & 0xfe3e;
  snd_soc_write(codec, WM8971_PWR1, reg | 0x01c0);
  codec->bias_level = SND_SOC_BIAS_ON;
  queue_delayed_work(wm8971_workq, &codec->delayed_work,
   msecs_to_jiffies(1000));
 }

 return 0;
}
