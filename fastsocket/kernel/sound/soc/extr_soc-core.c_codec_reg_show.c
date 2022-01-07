
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_soc_device {TYPE_1__* card; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int codec; } ;


 struct snd_soc_device* dev_get_drvdata (struct device*) ;
 int soc_codec_reg_show (int ,char*) ;

__attribute__((used)) static ssize_t codec_reg_show(struct device *dev,
 struct device_attribute *attr, char *buf)
{
 struct snd_soc_device *devdata = dev_get_drvdata(dev);
 return soc_codec_reg_show(devdata->card->codec, buf);
}
