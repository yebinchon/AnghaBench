
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct et_node {int dfs_num_out; } ;
typedef enum cdi_direction { ____Placeholder_cdi_direction } cdi_direction ;
typedef TYPE_1__* basic_block ;
struct TYPE_3__ {struct et_node** dom; } ;


 scalar_t__ DOM_OK ;
 scalar_t__* dom_computed ;
 int gcc_assert (int) ;

unsigned
bb_dom_dfs_out (enum cdi_direction dir, basic_block bb)
{
  struct et_node *n = bb->dom[dir];

  gcc_assert (dom_computed[dir] == DOM_OK);
  return n->dfs_num_out;
}
