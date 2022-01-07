
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int* data; } ;
struct snd_ice1712 {TYPE_1__ eeprom; } ;


 int I2S_FORMAT ;
 int ICEMT1724 (struct snd_ice1712*,int ) ;
 size_t ICE_EEP2_ACLINK ;
 int VT1724_CFG_PRO_I2S ;
 unsigned char VT1724_MT_I2S_MCLK_128X ;
 unsigned char inb (int ) ;
 int outb (unsigned char,int ) ;

__attribute__((used)) static unsigned char stdclock_set_mclk(struct snd_ice1712 *ice,
           unsigned int rate)
{
 unsigned char val, old;

 if (ice->eeprom.data[ICE_EEP2_ACLINK] & VT1724_CFG_PRO_I2S) {
  val = old = inb(ICEMT1724(ice, I2S_FORMAT));
  if (rate > 96000)
   val |= VT1724_MT_I2S_MCLK_128X;
  else
   val &= ~VT1724_MT_I2S_MCLK_128X;
  if (val != old) {
   outb(val, ICEMT1724(ice, I2S_FORMAT));

   return 1;
  }
 }

 return 0;
}
