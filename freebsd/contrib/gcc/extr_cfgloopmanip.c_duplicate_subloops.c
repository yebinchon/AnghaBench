
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct loops {int dummy; } ;
struct loop {struct loop* next; struct loop* inner; } ;


 struct loop* duplicate_loop (struct loops*,struct loop*,struct loop*) ;

__attribute__((used)) static void
duplicate_subloops (struct loops *loops, struct loop *loop, struct loop *target)
{
  struct loop *aloop, *cloop;

  for (aloop = loop->inner; aloop; aloop = aloop->next)
    {
      cloop = duplicate_loop (loops, aloop, target);
      duplicate_subloops (loops, aloop, cloop);
    }
}
