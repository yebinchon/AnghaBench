
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static unsigned int snd_trident_convert_adc_rate(unsigned int rate)
{
 unsigned int delta;





 if (rate == 44100)
  delta = 0x116a;
 else if (rate == 8000)
  delta = 0x6000;
 else if (rate == 48000)
  delta = 0x1000;
 else
  delta = ((48000 << 12) / rate) & 0x0000ffff;
 return delta;
}
