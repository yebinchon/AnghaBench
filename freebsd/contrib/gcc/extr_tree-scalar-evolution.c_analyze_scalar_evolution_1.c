
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int tree ;
struct loop {int dummy; } ;
typedef TYPE_1__* basic_block ;
struct TYPE_4__ {struct loop* loop_father; } ;



 int NULL_TREE ;

 int POINTER_TYPE_P (int ) ;
 int SSA_NAME ;
 int SSA_NAME_DEF_STMT (int ) ;
 int TREE_CODE (int ) ;
 int TREE_OPERAND (int ,int) ;
 int TREE_TYPE (int ) ;
 int VECTOR_TYPE ;
 int automatically_generated_chrec_p (int ) ;
 TYPE_1__* bb_for_stmt (int ) ;
 int chrec_dont_know ;
 int chrec_not_analyzed_yet ;
 int compute_scalar_evolution_in_loop (struct loop*,struct loop*,int ) ;
 struct loop* find_common_loop (struct loop*,struct loop*) ;
 int flow_bb_inside_loop_p (struct loop*,TYPE_1__*) ;
 int fold_used_pointer (int ,int ) ;
 int interpret_condition_phi (struct loop*,int ) ;
 int interpret_loop_phi (struct loop*,int ) ;
 int interpret_rhs_modify_expr (struct loop*,int ,int ,int ) ;
 int loop_phi_node_p (int ) ;
 int pointer_used_p (int ) ;
 int set_scalar_evolution (int ,int ) ;

__attribute__((used)) static tree
analyze_scalar_evolution_1 (struct loop *loop, tree var, tree res)
{
  tree def, type = TREE_TYPE (var);
  basic_block bb;
  struct loop *def_loop;

  if (loop == ((void*)0) || TREE_CODE (type) == VECTOR_TYPE)
    return chrec_dont_know;

  if (TREE_CODE (var) != SSA_NAME)
    return interpret_rhs_modify_expr (loop, NULL_TREE, var, type);

  def = SSA_NAME_DEF_STMT (var);
  bb = bb_for_stmt (def);
  def_loop = bb ? bb->loop_father : ((void*)0);

  if (bb == ((void*)0)
      || !flow_bb_inside_loop_p (loop, bb))
    {

      res = var;
      goto set_and_end;
    }

  if (res != chrec_not_analyzed_yet)
    {
      if (loop != bb->loop_father)
 res = compute_scalar_evolution_in_loop
     (find_common_loop (loop, bb->loop_father), bb->loop_father, res);

      goto set_and_end;
    }

  if (loop != def_loop)
    {
      res = analyze_scalar_evolution_1 (def_loop, var, chrec_not_analyzed_yet);
      res = compute_scalar_evolution_in_loop (loop, def_loop, res);

      goto set_and_end;
    }

  switch (TREE_CODE (def))
    {
    case 129:
      res = interpret_rhs_modify_expr (loop, def, TREE_OPERAND (def, 1), type);

      if (POINTER_TYPE_P (type)
   && !automatically_generated_chrec_p (res)
   && pointer_used_p (var))
 res = fold_used_pointer (res, def);
      break;

    case 128:
      if (loop_phi_node_p (def))
 res = interpret_loop_phi (loop, def);
      else
 res = interpret_condition_phi (loop, def);
      break;

    default:
      res = chrec_dont_know;
      break;
    }

 set_and_end:


  if (res == chrec_dont_know)
    res = var;

  if (loop == def_loop)
    set_scalar_evolution (var, res);

  return res;
}
