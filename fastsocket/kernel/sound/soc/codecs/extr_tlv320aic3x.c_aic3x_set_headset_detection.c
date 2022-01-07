
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct snd_soc_codec {int dummy; } ;


 int AIC3X_BUTTON_DEBOUNCE_MASK ;
 int AIC3X_BUTTON_DEBOUNCE_SHIFT ;
 int AIC3X_HEADSET_DEBOUNCE_MASK ;
 int AIC3X_HEADSET_DEBOUNCE_SHIFT ;
 int AIC3X_HEADSET_DETECT_CTRL_A ;
 int AIC3X_HEADSET_DETECT_ENABLED ;
 int AIC3X_HEADSET_DETECT_MASK ;
 int AIC3X_HEADSET_DETECT_SHIFT ;
 int aic3x_write (struct snd_soc_codec*,int ,int) ;

void aic3x_set_headset_detection(struct snd_soc_codec *codec, int detect,
     int headset_debounce, int button_debounce)
{
 u8 val;

 val = ((detect & AIC3X_HEADSET_DETECT_MASK)
  << AIC3X_HEADSET_DETECT_SHIFT) |
       ((headset_debounce & AIC3X_HEADSET_DEBOUNCE_MASK)
  << AIC3X_HEADSET_DEBOUNCE_SHIFT) |
       ((button_debounce & AIC3X_BUTTON_DEBOUNCE_MASK)
  << AIC3X_BUTTON_DEBOUNCE_SHIFT);

 if (detect & AIC3X_HEADSET_DETECT_MASK)
  val |= AIC3X_HEADSET_DETECT_ENABLED;

 aic3x_write(codec, AIC3X_HEADSET_DETECT_CTRL_A, val);
}
