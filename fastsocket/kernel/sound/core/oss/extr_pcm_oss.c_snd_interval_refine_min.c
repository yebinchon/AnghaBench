
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_interval {unsigned int min; int openmin; scalar_t__ integer; } ;


 int EINVAL ;
 scalar_t__ snd_interval_checkempty (struct snd_interval*) ;
 int snd_interval_none (struct snd_interval*) ;

__attribute__((used)) static int snd_interval_refine_min(struct snd_interval *i, unsigned int min, int openmin)
{
 int changed = 0;
 if (i->min < min) {
  i->min = min;
  i->openmin = openmin;
  changed = 1;
 } else if (i->min == min && !i->openmin && openmin) {
  i->openmin = 1;
  changed = 1;
 }
 if (i->integer) {
  if (i->openmin) {
   i->min++;
   i->openmin = 0;
  }
 }
 if (snd_interval_checkempty(i)) {
  snd_interval_none(i);
  return -EINVAL;
 }
 return changed;
}
