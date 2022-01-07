
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int subvendor; } ;
struct snd_ice1712 {TYPE_1__ eeprom; } ;


 unsigned char ICE1712_DELTA_1010LT_CS ;
 unsigned char ICE1712_DELTA_1010LT_CS_NONE ;
 unsigned char ICE1712_DELTA_AP_CS_DIGITAL ;
 int ICE1712_IREG_GPIO_DATA ;





 unsigned char ICE1712_VX442_CS_DIGITAL ;
 int snd_ice1712_write (struct snd_ice1712*,int ,unsigned char) ;

__attribute__((used)) static void ap_cs8427_codec_deassert(struct snd_ice1712 *ice, unsigned char tmp)
{
 switch (ice->eeprom.subvendor) {
 case 131:
 case 130:
  tmp &= ~ICE1712_DELTA_1010LT_CS;
  tmp |= ICE1712_DELTA_1010LT_CS_NONE;
  break;
 case 132:
 case 129:
  tmp |= ICE1712_DELTA_AP_CS_DIGITAL;
  break;
 case 128:
  tmp |= ICE1712_VX442_CS_DIGITAL;
  break;
 }
 snd_ice1712_write(ice, ICE1712_IREG_GPIO_DATA, tmp);
}
