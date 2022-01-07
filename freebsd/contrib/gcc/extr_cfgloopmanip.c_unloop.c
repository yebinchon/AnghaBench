
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct loops {int ** parray; } ;
struct loop {unsigned int num_nodes; size_t num; int outer; struct loop* inner; TYPE_1__* latch; } ;
typedef TYPE_1__* basic_block ;
struct TYPE_10__ {int flags; } ;
struct TYPE_9__ {struct loop* loop_father; } ;


 int EDGE_IRREDUCIBLE_LOOP ;
 int add_bb_to_loop (TYPE_1__*,int ) ;
 int fix_bb_placements (struct loops*,TYPE_1__*,int*) ;
 int flow_loop_free (struct loop*) ;
 int flow_loop_tree_node_add (int ,struct loop*) ;
 int flow_loop_tree_node_remove (struct loop*) ;
 int free (TYPE_1__**) ;
 TYPE_1__** get_loop_body (struct loop*) ;
 TYPE_4__* loop_preheader_edge (struct loop*) ;
 int remove_bb_from_loops (TYPE_1__*) ;
 int remove_edge (int ) ;
 int single_succ_edge (TYPE_1__*) ;

__attribute__((used)) static void
unloop (struct loops *loops, struct loop *loop, bool *irred_invalidated)
{
  basic_block *body;
  struct loop *ploop;
  unsigned i, n;
  basic_block latch = loop->latch;
  bool dummy = 0;

  if (loop_preheader_edge (loop)->flags & EDGE_IRREDUCIBLE_LOOP)
    *irred_invalidated = 1;







  body = get_loop_body (loop);
  n = loop->num_nodes;
  for (i = 0; i < n; i++)
    if (body[i]->loop_father == loop)
      {
 remove_bb_from_loops (body[i]);
 add_bb_to_loop (body[i], loop->outer);
      }
  free(body);

  while (loop->inner)
    {
      ploop = loop->inner;
      flow_loop_tree_node_remove (ploop);
      flow_loop_tree_node_add (loop->outer, ploop);
    }


  flow_loop_tree_node_remove (loop);
  loops->parray[loop->num] = ((void*)0);
  flow_loop_free (loop);

  remove_edge (single_succ_edge (latch));




  fix_bb_placements (loops, latch, &dummy);
}
