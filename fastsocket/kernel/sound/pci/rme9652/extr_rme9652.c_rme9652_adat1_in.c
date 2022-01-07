
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_rme9652 {int control_register; } ;


 int RME9652_ADAT1_INTERNAL ;

__attribute__((used)) static unsigned int rme9652_adat1_in(struct snd_rme9652 *rme9652)
{
 if (rme9652->control_register & RME9652_ADAT1_INTERNAL)
  return 1;
 return 0;
}
