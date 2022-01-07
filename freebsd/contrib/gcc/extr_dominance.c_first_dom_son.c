
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct et_node {TYPE_2__* data; } ;
typedef enum cdi_direction { ____Placeholder_cdi_direction } cdi_direction ;
typedef TYPE_2__* basic_block ;
struct TYPE_6__ {TYPE_1__** dom; } ;
struct TYPE_5__ {struct et_node* son; } ;



basic_block
first_dom_son (enum cdi_direction dir, basic_block bb)
{
  struct et_node *son = bb->dom[dir]->son;

  return son ? son->data : ((void*)0);
}
