
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct environ {int allocated; char** vector; } ;


 scalar_t__ xmalloc (int) ;

struct environ *
make_environ (void)
{
  struct environ *e;

  e = (struct environ *) xmalloc (sizeof (struct environ));

  e->allocated = 10;
  e->vector = (char **) xmalloc ((e->allocated + 1) * sizeof (char *));
  e->vector[0] = 0;
  return e;
}
