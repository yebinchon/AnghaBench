
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct snd_soc_device {TYPE_1__* card; } ;
struct snd_soc_codec {int* reg_cache; int suspend_bias_level; int control_data; int (* hw_write ) (int ,int*,int) ;} ;
struct platform_device {int dummy; } ;
struct TYPE_2__ {struct snd_soc_codec* codec; } ;


 int ARRAY_SIZE (int ) ;
 int aic3x_reg ;
 int aic3x_set_bias_level (struct snd_soc_codec*,int ) ;
 struct snd_soc_device* platform_get_drvdata (struct platform_device*) ;
 int stub1 (int ,int*,int) ;

__attribute__((used)) static int aic3x_resume(struct platform_device *pdev)
{
 struct snd_soc_device *socdev = platform_get_drvdata(pdev);
 struct snd_soc_codec *codec = socdev->card->codec;
 int i;
 u8 data[2];
 u8 *cache = codec->reg_cache;


 for (i = 0; i < ARRAY_SIZE(aic3x_reg); i++) {
  data[0] = i;
  data[1] = cache[i];
  codec->hw_write(codec->control_data, data, 2);
 }

 aic3x_set_bias_level(codec, codec->suspend_bias_level);

 return 0;
}
