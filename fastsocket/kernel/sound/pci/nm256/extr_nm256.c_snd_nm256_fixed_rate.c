
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int ARRAY_SIZE (unsigned int*) ;
 unsigned int* samplerates ;
 int snd_BUG () ;

__attribute__((used)) static int
snd_nm256_fixed_rate(unsigned int rate)
{
 unsigned int i;
 for (i = 0; i < ARRAY_SIZE(samplerates); i++) {
  if (rate == samplerates[i])
   return i;
 }
 snd_BUG();
 return 0;
}
