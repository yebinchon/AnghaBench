
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef enum cdi_direction { ____Placeholder_cdi_direction } cdi_direction ;
typedef TYPE_1__* basic_block ;
struct TYPE_3__ {int ** dom; } ;


 scalar_t__ DOM_NO_FAST_QUERY ;
 scalar_t__ DOM_OK ;
 scalar_t__* dom_computed ;
 int et_free_tree (int *) ;
 int gcc_assert (scalar_t__) ;
 int * n_bbs_in_dom_tree ;

void
delete_from_dominance_info (enum cdi_direction dir, basic_block bb)
{
  gcc_assert (dom_computed[dir]);

  et_free_tree (bb->dom[dir]);
  bb->dom[dir] = ((void*)0);
  n_bbs_in_dom_tree[dir]--;

  if (dom_computed[dir] == DOM_OK)
    dom_computed[dir] = DOM_NO_FAST_QUERY;
}
