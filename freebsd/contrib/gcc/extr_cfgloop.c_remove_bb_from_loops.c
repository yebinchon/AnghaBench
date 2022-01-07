
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct loop {int depth; TYPE_1__** pred; int num_nodes; } ;
typedef TYPE_2__* basic_block ;
struct TYPE_5__ {scalar_t__ loop_depth; struct loop* loop_father; } ;
struct TYPE_4__ {int num_nodes; } ;



void
remove_bb_from_loops (basic_block bb)
{
   int i;
   struct loop *loop = bb->loop_father;

   loop->num_nodes--;
   for (i = 0; i < loop->depth; i++)
     loop->pred[i]->num_nodes--;
   bb->loop_father = ((void*)0);
   bb->loop_depth = 0;
}
