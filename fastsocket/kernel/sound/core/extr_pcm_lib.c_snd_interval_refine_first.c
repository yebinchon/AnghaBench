
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_interval {int max; scalar_t__ openmax; scalar_t__ openmin; int min; } ;


 int EINVAL ;
 scalar_t__ snd_BUG_ON (int ) ;
 int snd_interval_empty (struct snd_interval*) ;
 scalar_t__ snd_interval_single (struct snd_interval*) ;

__attribute__((used)) static int snd_interval_refine_first(struct snd_interval *i)
{
 if (snd_BUG_ON(snd_interval_empty(i)))
  return -EINVAL;
 if (snd_interval_single(i))
  return 0;
 i->max = i->min;
 i->openmax = i->openmin;
 if (i->openmax)
  i->max++;
 return 1;
}
