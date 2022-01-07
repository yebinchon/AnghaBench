
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct loop {struct loop* next; struct loop* inner; } ;


 int empty_loop_p (struct loop*) ;
 int remove_empty_loop (struct loop*) ;

__attribute__((used)) static bool
try_remove_empty_loop (struct loop *loop, bool *changed)
{
  bool nonempty_subloop = 0;
  struct loop *sub;


  for (sub = loop->inner; sub; sub = sub->next)
    nonempty_subloop |= !try_remove_empty_loop (sub, changed);

  if (nonempty_subloop || !empty_loop_p (loop))
    return 0;

  remove_empty_loop (loop);
  *changed = 1;
  return 1;
}
