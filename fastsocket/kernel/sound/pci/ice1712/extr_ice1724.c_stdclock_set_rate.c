
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ice1712 {int dummy; } ;


 int ARRAY_SIZE (unsigned int*) ;
 int ICEMT1724 (struct snd_ice1712*,int ) ;
 int RATE ;
 int outb (int,int ) ;
 unsigned int* stdclock_rate_list ;

__attribute__((used)) static void stdclock_set_rate(struct snd_ice1712 *ice, unsigned int rate)
{
 int i;
 for (i = 0; i < ARRAY_SIZE(stdclock_rate_list); i++) {
  if (stdclock_rate_list[i] == rate) {
   outb(i, ICEMT1724(ice, RATE));
   return;
  }
 }
}
