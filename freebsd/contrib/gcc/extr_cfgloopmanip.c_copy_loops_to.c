
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct loops {int dummy; } ;
struct loop {int dummy; } ;


 struct loop* duplicate_loop (struct loops*,struct loop*,struct loop*) ;
 int duplicate_subloops (struct loops*,struct loop*,struct loop*) ;

__attribute__((used)) static void
copy_loops_to (struct loops *loops, struct loop **copied_loops, int n, struct loop *target)
{
  struct loop *aloop;
  int i;

  for (i = 0; i < n; i++)
    {
      aloop = duplicate_loop (loops, copied_loops[i], target);
      duplicate_subloops (loops, copied_loops[i], aloop);
    }
}
