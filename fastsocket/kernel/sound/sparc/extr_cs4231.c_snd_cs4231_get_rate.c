
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned char* freq_bits ;
 unsigned int* rates ;

__attribute__((used)) static unsigned char snd_cs4231_get_rate(unsigned int rate)
{
 int i;

 for (i = 0; i < 14; i++)
  if (rate == rates[i])
   return freq_bits[i];

 return freq_bits[13];
}
