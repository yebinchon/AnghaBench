
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef enum cdi_direction { ____Placeholder_cdi_direction } cdi_direction ;
typedef TYPE_1__* basic_block ;
struct TYPE_4__ {scalar_t__* dom; } ;


 scalar_t__ DOM_NO_FAST_QUERY ;
 scalar_t__ DOM_OK ;
 scalar_t__* dom_computed ;
 scalar_t__ et_new_tree (TYPE_1__*) ;
 int gcc_assert (int) ;
 int * n_bbs_in_dom_tree ;

void
add_to_dominance_info (enum cdi_direction dir, basic_block bb)
{
  gcc_assert (dom_computed[dir]);
  gcc_assert (!bb->dom[dir]);

  n_bbs_in_dom_tree[dir]++;

  bb->dom[dir] = et_new_tree (bb);

  if (dom_computed[dir] == DOM_OK)
    dom_computed[dir] = DOM_NO_FAST_QUERY;
}
