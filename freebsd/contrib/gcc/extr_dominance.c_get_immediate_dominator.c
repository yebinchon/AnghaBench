
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct et_node {TYPE_1__* father; } ;
typedef enum cdi_direction { ____Placeholder_cdi_direction } cdi_direction ;
typedef TYPE_2__* basic_block ;
struct TYPE_6__ {struct et_node** dom; } ;
struct TYPE_5__ {TYPE_2__* data; } ;


 int * dom_computed ;
 int gcc_assert (int ) ;

basic_block
get_immediate_dominator (enum cdi_direction dir, basic_block bb)
{
  struct et_node *node = bb->dom[dir];

  gcc_assert (dom_computed[dir]);

  if (!node->father)
    return ((void*)0);

  return node->father->data;
}
