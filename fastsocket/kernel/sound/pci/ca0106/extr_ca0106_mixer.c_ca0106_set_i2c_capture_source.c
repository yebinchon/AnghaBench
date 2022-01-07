
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;
struct snd_ca0106 {unsigned int** i2c_capture_volume; size_t i2c_capture_source; } ;


 int ADC_ATTEN_ADCL ;
 int ADC_ATTEN_ADCR ;
 int ADC_MUX ;
 int snd_ca0106_i2c_write (struct snd_ca0106*,int ,unsigned int) ;

__attribute__((used)) static void ca0106_set_i2c_capture_source(struct snd_ca0106 *emu,
       unsigned int val, int force)
{
 unsigned int ngain, ogain;
 u32 source;

 snd_ca0106_i2c_write(emu, ADC_MUX, 0);
 ngain = emu->i2c_capture_volume[val][0];
 ogain = emu->i2c_capture_volume[emu->i2c_capture_source][0];
 if (force || ngain != ogain)
  snd_ca0106_i2c_write(emu, ADC_ATTEN_ADCL, ngain & 0xff);
 ngain = emu->i2c_capture_volume[val][1];
 ogain = emu->i2c_capture_volume[emu->i2c_capture_source][1];
 if (force || ngain != ogain)
  snd_ca0106_i2c_write(emu, ADC_ATTEN_ADCR, ngain & 0xff);
 source = 1 << val;
 snd_ca0106_i2c_write(emu, ADC_MUX, source);
 emu->i2c_capture_source = val;
}
