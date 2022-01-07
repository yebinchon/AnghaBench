
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct loop {int depth; TYPE_1__** pred; int num_nodes; } ;
typedef TYPE_2__* basic_block ;
struct TYPE_5__ {int loop_depth; struct loop* loop_father; } ;
struct TYPE_4__ {int num_nodes; } ;



void
add_bb_to_loop (basic_block bb, struct loop *loop)
{
   int i;

   bb->loop_father = loop;
   bb->loop_depth = loop->depth;
   loop->num_nodes++;
   for (i = 0; i < loop->depth; i++)
     loop->pred[i]->num_nodes++;
 }
