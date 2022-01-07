
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int ARRAY_SIZE (unsigned int*) ;
 unsigned int* rates ;
 int snd_BUG () ;

__attribute__((used)) static unsigned int snd_cmipci_rate_freq(unsigned int rate)
{
 unsigned int i;

 for (i = 0; i < ARRAY_SIZE(rates); i++) {
  if (rates[i] == rate)
   return i;
 }
 snd_BUG();
 return 0;
}
