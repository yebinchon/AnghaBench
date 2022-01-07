
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct loop {int level; struct loop* next; struct loop* inner; } ;



__attribute__((used)) static int
flow_loop_level_compute (struct loop *loop)
{
  struct loop *inner;
  int level = 1;

  if (! loop)
    return 0;






  for (inner = loop->inner; inner; inner = inner->next)
    {
      int ilevel = flow_loop_level_compute (inner) + 1;

      if (ilevel > level)
 level = ilevel;
    }

  loop->level = level;
  return level;
}
