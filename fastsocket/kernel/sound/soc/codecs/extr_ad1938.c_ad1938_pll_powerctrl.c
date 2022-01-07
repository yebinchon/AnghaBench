
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_codec {int (* read ) (struct snd_soc_codec*,int ) ;int (* write ) (struct snd_soc_codec*,int ,int) ;} ;


 int AD1938_PLL_CLK_CTRL0 ;
 int AD1938_PLL_POWERDOWN ;
 int stub1 (struct snd_soc_codec*,int ) ;
 int stub2 (struct snd_soc_codec*,int ,int) ;

__attribute__((used)) static inline int ad1938_pll_powerctrl(struct snd_soc_codec *codec, int cmd)
{
 int reg = codec->read(codec, AD1938_PLL_CLK_CTRL0);
 reg = (cmd > 0) ? reg & (~AD1938_PLL_POWERDOWN) : reg |
  AD1938_PLL_POWERDOWN;
 codec->write(codec, AD1938_PLL_CLK_CTRL0, reg);

 return 0;
}
