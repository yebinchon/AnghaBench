
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_interval {unsigned int min; unsigned int max; int integer; scalar_t__ openmax; scalar_t__ openmin; scalar_t__ empty; } ;


 int snd_interval_refine (struct snd_interval*,struct snd_interval*) ;

__attribute__((used)) static int snd_interval_refine_set(struct snd_interval *i, unsigned int val)
{
 struct snd_interval t;
 t.empty = 0;
 t.min = t.max = val;
 t.openmin = t.openmax = 0;
 t.integer = 1;
 return snd_interval_refine(i, &t);
}
