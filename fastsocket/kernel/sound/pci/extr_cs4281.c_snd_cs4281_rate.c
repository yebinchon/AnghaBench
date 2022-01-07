
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static unsigned int snd_cs4281_rate(unsigned int rate, unsigned int *real_rate)
{
 unsigned int val = ~0;

 if (real_rate)
  *real_rate = rate;

 switch (rate) {
 case 8000: return 5;
 case 11025: return 4;
 case 16000: return 3;
 case 22050: return 2;
 case 44100: return 1;
 case 48000: return 0;
 default:
  goto __variable;
 }
      __variable:
 val = 1536000 / rate;
 if (real_rate)
  *real_rate = 1536000 / val;
 return val;
}
