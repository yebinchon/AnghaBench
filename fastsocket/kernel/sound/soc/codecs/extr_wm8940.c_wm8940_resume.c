
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct snd_soc_device {TYPE_1__* card; } ;
struct snd_soc_codec {int* reg_cache; int (* hw_write ) (int ,int*,int) ;int suspend_bias_level; int control_data; } ;
struct platform_device {int dummy; } ;
struct TYPE_2__ {struct snd_soc_codec* codec; } ;


 int ARRAY_SIZE (int ) ;
 int EIO ;
 int SND_SOC_BIAS_STANDBY ;
 struct snd_soc_device* platform_get_drvdata (struct platform_device*) ;
 int stub1 (int ,int*,int) ;
 int wm8940_reg_defaults ;
 int wm8940_set_bias_level (struct snd_soc_codec*,int ) ;

__attribute__((used)) static int wm8940_resume(struct platform_device *pdev)
{
 struct snd_soc_device *socdev = platform_get_drvdata(pdev);
 struct snd_soc_codec *codec = socdev->card->codec;
 int i;
 int ret;
 u8 data[3];
 u16 *cache = codec->reg_cache;




 for (i = 0; i < ARRAY_SIZE(wm8940_reg_defaults); i++) {
  data[0] = i;
  data[1] = (cache[i] & 0xFF00) >> 8;
  data[2] = cache[i] & 0x00FF;
  ret = codec->hw_write(codec->control_data, data, 3);
  if (ret < 0)
   goto error_ret;
  else if (ret != 3) {
   ret = -EIO;
   goto error_ret;
  }
 }
 ret = wm8940_set_bias_level(codec, SND_SOC_BIAS_STANDBY);
 if (ret)
  goto error_ret;
 ret = wm8940_set_bias_level(codec, codec->suspend_bias_level);

error_ret:
 return ret;
}
