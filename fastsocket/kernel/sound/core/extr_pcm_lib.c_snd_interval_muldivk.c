
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_interval {int openmin; int openmax; scalar_t__ integer; void* max; void* min; scalar_t__ empty; } ;


 void* muldiv32 (void*,void*,unsigned int,unsigned int*) ;
 int snd_interval_none (struct snd_interval*) ;

void snd_interval_muldivk(const struct snd_interval *a, const struct snd_interval *b,
        unsigned int k, struct snd_interval *c)
{
 unsigned int r;
 if (a->empty || b->empty) {
  snd_interval_none(c);
  return;
 }
 c->empty = 0;
 c->min = muldiv32(a->min, b->min, k, &r);
 c->openmin = (r || a->openmin || b->openmin);
 c->max = muldiv32(a->max, b->max, k, &r);
 if (r) {
  c->max++;
  c->openmax = 1;
 } else
  c->openmax = (a->openmax || b->openmax);
 c->integer = 0;
}
