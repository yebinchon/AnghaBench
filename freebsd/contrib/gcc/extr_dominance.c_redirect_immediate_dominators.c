
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct et_node {struct et_node* son; } ;
typedef enum cdi_direction { ____Placeholder_cdi_direction } cdi_direction ;
typedef TYPE_1__* basic_block ;
struct TYPE_4__ {struct et_node** dom; } ;


 scalar_t__ DOM_NO_FAST_QUERY ;
 scalar_t__ DOM_OK ;
 scalar_t__* dom_computed ;
 int et_set_father (struct et_node*,struct et_node*) ;
 int et_split (struct et_node*) ;
 int gcc_assert (scalar_t__) ;

void
redirect_immediate_dominators (enum cdi_direction dir, basic_block bb,
          basic_block to)
{
  struct et_node *bb_node = bb->dom[dir], *to_node = to->dom[dir], *son;

  gcc_assert (dom_computed[dir]);

  if (!bb_node->son)
    return;

  while (bb_node->son)
    {
      son = bb_node->son;

      et_split (son);
      et_set_father (son, to_node);
    }

  if (dom_computed[dir] == DOM_OK)
    dom_computed[dir] = DOM_NO_FAST_QUERY;
}
