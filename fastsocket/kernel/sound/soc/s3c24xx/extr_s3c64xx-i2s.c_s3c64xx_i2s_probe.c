
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {int id; } ;
struct platform_device {int dummy; } ;


 int S3C64XX_GPD (int) ;
 int S3C64XX_GPD0_I2S0_CLK ;
 int S3C64XX_GPD1_I2S0_CDCLK ;
 int S3C64XX_GPD2_I2S0_LRCLK ;
 int S3C64XX_GPD3_I2S0_DI ;
 int S3C64XX_GPD4_I2S0_D0 ;
 int S3C64XX_GPE (int) ;
 int S3C64XX_GPE0_I2S1_CLK ;
 int S3C64XX_GPE1_I2S1_CDCLK ;
 int S3C64XX_GPE2_I2S1_LRCLK ;
 int S3C64XX_GPE3_I2S1_DI ;
 int S3C64XX_GPE4_I2S1_D0 ;
 int s3c_gpio_cfgpin (int ,int ) ;

__attribute__((used)) static int s3c64xx_i2s_probe(struct platform_device *pdev,
        struct snd_soc_dai *dai)
{

 switch (dai->id) {
 case 0:
  s3c_gpio_cfgpin(S3C64XX_GPD(0), S3C64XX_GPD0_I2S0_CLK);
  s3c_gpio_cfgpin(S3C64XX_GPD(1), S3C64XX_GPD1_I2S0_CDCLK);
  s3c_gpio_cfgpin(S3C64XX_GPD(2), S3C64XX_GPD2_I2S0_LRCLK);
  s3c_gpio_cfgpin(S3C64XX_GPD(3), S3C64XX_GPD3_I2S0_DI);
  s3c_gpio_cfgpin(S3C64XX_GPD(4), S3C64XX_GPD4_I2S0_D0);
  break;
 case 1:
  s3c_gpio_cfgpin(S3C64XX_GPE(0), S3C64XX_GPE0_I2S1_CLK);
  s3c_gpio_cfgpin(S3C64XX_GPE(1), S3C64XX_GPE1_I2S1_CDCLK);
  s3c_gpio_cfgpin(S3C64XX_GPE(2), S3C64XX_GPE2_I2S1_LRCLK);
  s3c_gpio_cfgpin(S3C64XX_GPE(3), S3C64XX_GPE3_I2S1_DI);
  s3c_gpio_cfgpin(S3C64XX_GPE(4), S3C64XX_GPE4_I2S1_D0);
 }

 return 0;
}
