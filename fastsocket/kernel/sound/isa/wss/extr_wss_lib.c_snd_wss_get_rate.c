
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ARRAY_SIZE (unsigned int*) ;
 unsigned char* freq_bits ;
 unsigned int* rates ;

__attribute__((used)) static unsigned char snd_wss_get_rate(unsigned int rate)
{
 int i;

 for (i = 0; i < ARRAY_SIZE(rates); i++)
  if (rate == rates[i])
   return freq_bits[i];

 return freq_bits[ARRAY_SIZE(rates) - 1];
}
