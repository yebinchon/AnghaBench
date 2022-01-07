
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comparison {TYPE_1__* file; struct comparison* parent; } ;
struct TYPE_2__ {int stat; } ;


 scalar_t__ same_file (int *,int *) ;

__attribute__((used)) static bool
dir_loop (struct comparison const *cmp, int i)
{
  struct comparison const *p = cmp;
  while ((p = p->parent))
    if (0 < same_file (&p->file[i].stat, &cmp->file[i].stat))
      return 1;
  return 0;
}
