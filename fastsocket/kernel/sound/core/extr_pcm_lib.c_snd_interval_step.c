
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_interval {unsigned int min; unsigned int max; int empty; scalar_t__ openmax; scalar_t__ openmin; } ;


 int EINVAL ;
 scalar_t__ snd_interval_checkempty (struct snd_interval*) ;

__attribute__((used)) static int snd_interval_step(struct snd_interval *i, unsigned int min, unsigned int step)
{
 unsigned int n;
 int changed = 0;
 n = (i->min - min) % step;
 if (n != 0 || i->openmin) {
  i->min += step - n;
  changed = 1;
 }
 n = (i->max - min) % step;
 if (n != 0 || i->openmax) {
  i->max -= n;
  changed = 1;
 }
 if (snd_interval_checkempty(i)) {
  i->empty = 1;
  return -EINVAL;
 }
 return changed;
}
