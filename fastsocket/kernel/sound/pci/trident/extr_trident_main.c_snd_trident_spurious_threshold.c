
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static unsigned int snd_trident_spurious_threshold(unsigned int rate,
         unsigned int period_size)
{
 unsigned int res = (rate * period_size) / 48000;
 if (res < 64)
  res = res / 2;
 else
  res -= 32;
 return res;
}
