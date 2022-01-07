
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct snd_soc_codec {int dummy; } ;


 int AIC3X_GPIO1_REG ;
 int AIC3X_GPIO2_REG ;
 int aic3x_read (struct snd_soc_codec*,int,int*) ;

int aic3x_get_gpio(struct snd_soc_codec *codec, int gpio)
{
 u8 reg = gpio ? AIC3X_GPIO2_REG : AIC3X_GPIO1_REG;
 u8 val, bit = gpio ? 2: 1;

 aic3x_read(codec, reg, &val);
 return (val >> bit) & 1;
}
