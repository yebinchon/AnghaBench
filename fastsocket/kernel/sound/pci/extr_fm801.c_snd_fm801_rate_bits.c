
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ARRAY_SIZE (unsigned int*) ;
 unsigned int* rates ;
 int snd_BUG () ;

__attribute__((used)) static unsigned short snd_fm801_rate_bits(unsigned int rate)
{
 unsigned int idx;

 for (idx = 0; idx < ARRAY_SIZE(rates); idx++)
  if (rates[idx] == rate)
   return idx;
 snd_BUG();
 return ARRAY_SIZE(rates) - 1;
}
