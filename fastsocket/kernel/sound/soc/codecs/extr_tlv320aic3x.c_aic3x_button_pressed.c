
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct snd_soc_codec {int dummy; } ;


 int AIC3X_HEADSET_DETECT_CTRL_B ;
 int aic3x_read (struct snd_soc_codec*,int ,int*) ;

int aic3x_button_pressed(struct snd_soc_codec *codec)
{
 u8 val;
 aic3x_read(codec, AIC3X_HEADSET_DETECT_CTRL_B, &val);
 return (val >> 5) & 1;
}
