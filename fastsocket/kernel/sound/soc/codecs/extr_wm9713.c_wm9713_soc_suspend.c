
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct snd_soc_device {TYPE_1__* card; } ;
struct snd_soc_codec {int dummy; } ;
struct platform_device {int dummy; } ;
typedef int pm_message_t ;
struct TYPE_2__ {struct snd_soc_codec* codec; } ;


 int AC97_EXTENDED_MID ;
 int AC97_EXTENDED_MSTATUS ;
 int AC97_POWERDOWN ;
 int ac97_read (struct snd_soc_codec*,int ) ;
 int ac97_write (struct snd_soc_codec*,int ,int) ;
 struct snd_soc_device* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int wm9713_soc_suspend(struct platform_device *pdev,
 pm_message_t state)
{
 struct snd_soc_device *socdev = platform_get_drvdata(pdev);
 struct snd_soc_codec *codec = socdev->card->codec;
 u16 reg;




 reg = ac97_read(codec, AC97_EXTENDED_MID);
 ac97_write(codec, AC97_EXTENDED_MID, reg | 0x7fff);
 ac97_write(codec, AC97_EXTENDED_MSTATUS, 0xffff);
 ac97_write(codec, AC97_POWERDOWN, 0x6f00);
 ac97_write(codec, AC97_POWERDOWN, 0xffff);

 return 0;
}
