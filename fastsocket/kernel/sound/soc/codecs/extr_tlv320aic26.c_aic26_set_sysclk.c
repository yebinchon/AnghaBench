
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_soc_dai {struct snd_soc_codec* codec; } ;
struct snd_soc_codec {struct aic26* private_data; } ;
struct aic26 {unsigned int mclk; TYPE_1__* spi; } ;
struct TYPE_2__ {int dev; } ;


 int EINVAL ;
 int dev_dbg (int *,char*,struct snd_soc_dai*,int,unsigned int,int) ;

__attribute__((used)) static int aic26_set_sysclk(struct snd_soc_dai *codec_dai,
       int clk_id, unsigned int freq, int dir)
{
 struct snd_soc_codec *codec = codec_dai->codec;
 struct aic26 *aic26 = codec->private_data;

 dev_dbg(&aic26->spi->dev, "aic26_set_sysclk(dai=%p, clk_id==%i,"
  " freq=%i, dir=%i)\n",
  codec_dai, clk_id, freq, dir);


 if ((freq < 2000000) || (freq > 50000000))
  return -EINVAL;

 aic26->mclk = freq;
 return 0;
}
