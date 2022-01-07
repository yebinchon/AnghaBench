
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int ARRAY_SIZE (int*) ;
 unsigned int HARMONY_SR_44KHZ ;
 unsigned int* rate_bits ;
 int* snd_harmony_rates ;

__attribute__((used)) static unsigned int
snd_harmony_rate_bits(int rate)
{
 unsigned int i;

 for (i = 0; i < ARRAY_SIZE(snd_harmony_rates); i++)
  if (snd_harmony_rates[i] == rate)
   return rate_bits[i];

 return HARMONY_SR_44KHZ;
}
