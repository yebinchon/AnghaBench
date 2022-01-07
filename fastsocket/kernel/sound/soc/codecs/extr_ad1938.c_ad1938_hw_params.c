
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_soc_pcm_runtime {struct snd_soc_device* socdev; } ;
struct snd_soc_device {TYPE_1__* card; } ;
struct snd_soc_dai {int dummy; } ;
struct snd_soc_codec {int (* read ) (struct snd_soc_codec*,int ) ;int (* write ) (struct snd_soc_codec*,int ,int) ;} ;
struct snd_pcm_substream {struct snd_soc_pcm_runtime* private_data; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct TYPE_2__ {struct snd_soc_codec* codec; } ;


 int AD1938_ADC_CTRL1 ;
 int AD1938_ADC_WORD_LEN_MASK ;
 int AD1938_DAC_CTRL2 ;
 int AD1938_DAC_WORD_LEN_MASK ;




 int params_format (struct snd_pcm_hw_params*) ;
 int stub1 (struct snd_soc_codec*,int ) ;
 int stub2 (struct snd_soc_codec*,int ,int) ;
 int stub3 (struct snd_soc_codec*,int ) ;
 int stub4 (struct snd_soc_codec*,int ,int) ;

__attribute__((used)) static int ad1938_hw_params(struct snd_pcm_substream *substream,
  struct snd_pcm_hw_params *params,
  struct snd_soc_dai *dai)
{
 int word_len = 0, reg = 0;

 struct snd_soc_pcm_runtime *rtd = substream->private_data;
 struct snd_soc_device *socdev = rtd->socdev;
 struct snd_soc_codec *codec = socdev->card->codec;


 switch (params_format(params)) {
 case 131:
  word_len = 3;
  break;
 case 130:
  word_len = 1;
  break;
 case 129:
 case 128:
  word_len = 0;
  break;
 }

 reg = codec->read(codec, AD1938_DAC_CTRL2);
 reg = (reg & (~AD1938_DAC_WORD_LEN_MASK)) | word_len;
 codec->write(codec, AD1938_DAC_CTRL2, reg);

 reg = codec->read(codec, AD1938_ADC_CTRL1);
 reg = (reg & (~AD1938_ADC_WORD_LEN_MASK)) | word_len;
 codec->write(codec, AD1938_ADC_CTRL1, reg);

 return 0;
}
