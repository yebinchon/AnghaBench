
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int s; } ;
struct spelling {scalar_t__ kind; TYPE_1__ u; } ;


 scalar_t__ SPELLING_BOUNDS ;
 struct spelling* spelling ;
 struct spelling* spelling_base ;
 scalar_t__ strlen (int ) ;

__attribute__((used)) static int
spelling_length (void)
{
  int size = 0;
  struct spelling *p;

  for (p = spelling_base; p < spelling; p++)
    {
      if (p->kind == SPELLING_BOUNDS)
 size += 25;
      else
 size += strlen (p->u.s) + 1;
    }

  return size;
}
