
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct et_node {TYPE_3__* data; TYPE_2__* father; } ;
typedef enum cdi_direction { ____Placeholder_cdi_direction } cdi_direction ;
typedef TYPE_3__* basic_block ;
struct TYPE_8__ {TYPE_1__** dom; } ;
struct TYPE_7__ {struct et_node* son; } ;
struct TYPE_6__ {struct et_node* right; } ;



basic_block
next_dom_son (enum cdi_direction dir, basic_block bb)
{
  struct et_node *next = bb->dom[dir]->right;

  return next->father->son == next ? ((void*)0) : next->data;
}
