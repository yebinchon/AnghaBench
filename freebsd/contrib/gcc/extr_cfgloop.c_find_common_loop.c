
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct loop {size_t depth; struct loop* outer; struct loop** pred; } ;



struct loop *
find_common_loop (struct loop *loop_s, struct loop *loop_d)
{
  if (!loop_s) return loop_d;
  if (!loop_d) return loop_s;

  if (loop_s->depth < loop_d->depth)
    loop_d = loop_d->pred[loop_s->depth];
  else if (loop_s->depth > loop_d->depth)
    loop_s = loop_s->pred[loop_d->depth];

  while (loop_s != loop_d)
    {
      loop_s = loop_s->outer;
      loop_d = loop_d->outer;
    }
  return loop_s;
}
