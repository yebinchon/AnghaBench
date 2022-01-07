
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct loops {int ** parray; } ;
struct loop {unsigned int num_nodes; size_t num; int outer; int inner; } ;
typedef TYPE_1__* basic_block ;
struct TYPE_3__ {int loop_father; } ;


 int flow_loop_free (struct loop*) ;
 int flow_loop_tree_node_remove (struct loop*) ;
 int gcc_assert (int) ;
 TYPE_1__** get_loop_body (struct loop*) ;

__attribute__((used)) static void
cancel_loop (struct loops *loops, struct loop *loop)
{
  basic_block *bbs;
  unsigned i;

  gcc_assert (!loop->inner);


  bbs = get_loop_body (loop);
  for (i = 0; i < loop->num_nodes; i++)
    bbs[i]->loop_father = loop->outer;


  flow_loop_tree_node_remove (loop);


  loops->parray[loop->num] = ((void*)0);


  flow_loop_free (loop);
}
