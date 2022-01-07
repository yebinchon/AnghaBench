
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_interval {int min; scalar_t__ openmin; scalar_t__ openmax; int max; } ;


 int EINVAL ;
 scalar_t__ snd_BUG_ON (int ) ;
 int snd_interval_empty (struct snd_interval*) ;
 scalar_t__ snd_interval_single (struct snd_interval*) ;

__attribute__((used)) static int snd_interval_refine_last(struct snd_interval *i)
{
 if (snd_BUG_ON(snd_interval_empty(i)))
  return -EINVAL;
 if (snd_interval_single(i))
  return 0;
 i->min = i->max;
 i->openmin = i->openmax;
 if (i->openmin)
  i->min--;
 return 1;
}
