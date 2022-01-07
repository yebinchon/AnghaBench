
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int* data; } ;
struct snd_ice1712 {int * hw_rates; int vt1720; TYPE_1__ eeprom; } ;


 size_t ICE_EEP2_ACLINK ;
 size_t ICE_EEP2_I2S ;
 int VT1724_CFG_PRO_I2S ;
 int hw_constraints_rates_192 ;
 int hw_constraints_rates_48 ;
 int hw_constraints_rates_96 ;

__attribute__((used)) static void set_std_hw_rates(struct snd_ice1712 *ice)
{
 if (ice->eeprom.data[ICE_EEP2_ACLINK] & VT1724_CFG_PRO_I2S) {


  if ((ice->eeprom.data[ICE_EEP2_I2S] & 0x08) && !ice->vt1720)
   ice->hw_rates = &hw_constraints_rates_192;
  else
   ice->hw_rates = &hw_constraints_rates_96;
 } else {

  ice->hw_rates = &hw_constraints_rates_48;
 }
}
