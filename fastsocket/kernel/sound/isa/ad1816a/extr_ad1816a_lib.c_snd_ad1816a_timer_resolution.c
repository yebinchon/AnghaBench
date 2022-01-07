
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_timer {int dummy; } ;


 scalar_t__ snd_BUG_ON (int) ;

__attribute__((used)) static unsigned long snd_ad1816a_timer_resolution(struct snd_timer *timer)
{
 if (snd_BUG_ON(!timer))
  return 0;

 return 10000;
}
