
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum cdi_direction { ____Placeholder_cdi_direction } cdi_direction ;
typedef int * basic_block ;


 int ** dom_computed ;
 int gcc_assert (int *) ;
 int * get_immediate_dominator (int,int *) ;
 int * recount_dominator (int,int *) ;
 int set_immediate_dominator (int,int *,int *) ;

void
iterate_fix_dominators (enum cdi_direction dir, basic_block *bbs, int n)
{
  int i, changed = 1;
  basic_block old_dom, new_dom;

  gcc_assert (dom_computed[dir]);

  for (i = 0; i < n; i++)
    set_immediate_dominator (dir, bbs[i], ((void*)0));

  while (changed)
    {
      changed = 0;
      for (i = 0; i < n; i++)
 {
   old_dom = get_immediate_dominator (dir, bbs[i]);
   new_dom = recount_dominator (dir, bbs[i]);
   if (old_dom != new_dom)
     {
       changed = 1;
       set_immediate_dominator (dir, bbs[i], new_dom);
     }
 }
    }

  for (i = 0; i < n; i++)
    gcc_assert (get_immediate_dominator (dir, bbs[i]));
}
