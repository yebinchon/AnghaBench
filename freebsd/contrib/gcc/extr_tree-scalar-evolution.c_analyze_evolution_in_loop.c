
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int tree ;
typedef scalar_t__ t_bool ;
struct loop {int dummy; } ;
typedef int basic_block ;
struct TYPE_2__ {int src; } ;


 int PHI_ARG_DEF (int ,int) ;
 TYPE_1__* PHI_ARG_EDGE (int ,int) ;
 int PHI_NUM_ARGS (int ) ;
 scalar_t__ SSA_NAME ;
 int SSA_NAME_DEF_STMT (int ) ;
 int TDF_DETAILS ;
 scalar_t__ TREE_CODE (int ) ;
 int chrec_dont_know ;
 int chrec_merge (int ,int ) ;
 int chrec_not_analyzed_yet ;
 scalar_t__ dump_file ;
 int dump_flags ;
 int flow_bb_inside_loop_p (struct loop*,int ) ;
 scalar_t__ follow_ssa_edge (struct loop*,int ,int ,int *,int ) ;
 int fprintf (scalar_t__,char*) ;
 struct loop* loop_containing_stmt (int ) ;
 int print_generic_expr (scalar_t__,int ,int ) ;
 scalar_t__ t_false ;
 scalar_t__ t_true ;

__attribute__((used)) static tree
analyze_evolution_in_loop (tree loop_phi_node,
      tree init_cond)
{
  int i;
  tree evolution_function = chrec_not_analyzed_yet;
  struct loop *loop = loop_containing_stmt (loop_phi_node);
  basic_block bb;

  if (dump_file && (dump_flags & TDF_DETAILS))
    {
      fprintf (dump_file, "(analyze_evolution_in_loop \n");
      fprintf (dump_file, "  (loop_phi_node = ");
      print_generic_expr (dump_file, loop_phi_node, 0);
      fprintf (dump_file, ")\n");
    }

  for (i = 0; i < PHI_NUM_ARGS (loop_phi_node); i++)
    {
      tree arg = PHI_ARG_DEF (loop_phi_node, i);
      tree ssa_chain, ev_fn;
      t_bool res;


      bb = PHI_ARG_EDGE (loop_phi_node, i)->src;
      if (!flow_bb_inside_loop_p (loop, bb))
 continue;

      if (TREE_CODE (arg) == SSA_NAME)
 {
   ssa_chain = SSA_NAME_DEF_STMT (arg);


   ev_fn = init_cond;
   res = follow_ssa_edge (loop, ssa_chain, loop_phi_node, &ev_fn, 0);
 }
      else
 res = t_false;







      if (res != t_true)
 ev_fn = chrec_dont_know;



      evolution_function = chrec_merge (evolution_function, ev_fn);
    }

  if (dump_file && (dump_flags & TDF_DETAILS))
    {
      fprintf (dump_file, "  (evolution_function = ");
      print_generic_expr (dump_file, evolution_function, 0);
      fprintf (dump_file, "))\n");
    }

  return evolution_function;
}
