
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct map {scalar_t__ start; scalar_t__ end; } ;



int map__overlap(struct map *l, struct map *r)
{
 if (l->start > r->start) {
  struct map *t = l;
  l = r;
  r = t;
 }

 if (l->end > r->start)
  return 1;

 return 0;
}
