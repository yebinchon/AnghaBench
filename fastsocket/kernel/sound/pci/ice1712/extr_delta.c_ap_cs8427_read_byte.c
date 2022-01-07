
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ice1712 {int dummy; } ;


 unsigned char ICE1712_DELTA_AP_CCLK ;
 int ICE1712_DELTA_AP_DIN ;
 int ICE1712_IREG_GPIO_DATA ;
 int snd_ice1712_read (struct snd_ice1712*,int ) ;
 int snd_ice1712_write (struct snd_ice1712*,int ,unsigned char) ;
 int udelay (int) ;

__attribute__((used)) static unsigned char ap_cs8427_read_byte(struct snd_ice1712 *ice, unsigned char tmp)
{
 unsigned char data = 0;
 int idx;

 for (idx = 7; idx >= 0; idx--) {
  tmp &= ~ICE1712_DELTA_AP_CCLK;
  snd_ice1712_write(ice, ICE1712_IREG_GPIO_DATA, tmp);
  udelay(5);
  if (snd_ice1712_read(ice, ICE1712_IREG_GPIO_DATA) & ICE1712_DELTA_AP_DIN)
   data |= 1 << idx;
  tmp |= ICE1712_DELTA_AP_CCLK;
  snd_ice1712_write(ice, ICE1712_IREG_GPIO_DATA, tmp);
  udelay(5);
 }
 return data;
}
