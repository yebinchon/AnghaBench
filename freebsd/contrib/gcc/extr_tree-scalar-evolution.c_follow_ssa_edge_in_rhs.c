
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef int t_bool ;
struct loop {int num; } ;



 int ASSERT_EXPR_VAR (int ) ;





 int SSA_NAME_DEF_STMT (int ) ;
 int STRIP_TYPE_NOPS (int ) ;
 int const TREE_CODE (int ) ;
 int TREE_OPERAND (int ,int) ;
 int TREE_TYPE (int ) ;
 int add_to_evolution (int ,int ,int const,int ,int ) ;
 int chrec_convert (int ,int ,int ) ;
 int chrec_dont_know ;
 int follow_ssa_edge (struct loop*,int ,int ,int *,int) ;
 int t_dont_know ;
 int t_false ;
 int t_true ;

__attribute__((used)) static t_bool
follow_ssa_edge_in_rhs (struct loop *loop, tree at_stmt, tree rhs,
   tree halting_phi, tree *evolution_of_loop, int limit)
{
  t_bool res = t_false;
  tree rhs0, rhs1;
  tree type_rhs = TREE_TYPE (rhs);
  tree evol;
  switch (TREE_CODE (rhs))
    {
    case 130:

      res = follow_ssa_edge_in_rhs (loop, at_stmt, TREE_OPERAND (rhs, 0),
        halting_phi, evolution_of_loop, limit);
      *evolution_of_loop = chrec_convert (TREE_TYPE (rhs),
       *evolution_of_loop, at_stmt);
      break;

    case 132:

      res = t_false;
      break;

    case 128:

      res = follow_ssa_edge
 (loop, SSA_NAME_DEF_STMT (rhs), halting_phi, evolution_of_loop, limit);
      break;

    case 129:

      rhs0 = TREE_OPERAND (rhs, 0);
      rhs1 = TREE_OPERAND (rhs, 1);
      STRIP_TYPE_NOPS (rhs0);
      STRIP_TYPE_NOPS (rhs1);

      if (TREE_CODE (rhs0) == 128)
 {
   if (TREE_CODE (rhs1) == 128)
     {


       evol = *evolution_of_loop;
       res = follow_ssa_edge
  (loop, SSA_NAME_DEF_STMT (rhs0), halting_phi,
   &evol, limit);

       if (res == t_true)
  *evolution_of_loop = add_to_evolution
    (loop->num,
     chrec_convert (type_rhs, evol, at_stmt),
     129, rhs1, at_stmt);

       else if (res == t_false)
  {
    res = follow_ssa_edge
      (loop, SSA_NAME_DEF_STMT (rhs1), halting_phi,
       evolution_of_loop, limit);

    if (res == t_true)
      *evolution_of_loop = add_to_evolution
        (loop->num,
         chrec_convert (type_rhs, *evolution_of_loop, at_stmt),
         129, rhs0, at_stmt);

    else if (res == t_dont_know)
      *evolution_of_loop = chrec_dont_know;
  }

       else if (res == t_dont_know)
  *evolution_of_loop = chrec_dont_know;
     }

   else
     {


       res = follow_ssa_edge
  (loop, SSA_NAME_DEF_STMT (rhs0), halting_phi,
   evolution_of_loop, limit);
       if (res == t_true)
  *evolution_of_loop = add_to_evolution
    (loop->num, chrec_convert (type_rhs, *evolution_of_loop,
          at_stmt),
     129, rhs1, at_stmt);

       else if (res == t_dont_know)
  *evolution_of_loop = chrec_dont_know;
     }
 }

      else if (TREE_CODE (rhs1) == 128)
 {


   res = follow_ssa_edge
     (loop, SSA_NAME_DEF_STMT (rhs1), halting_phi,
      evolution_of_loop, limit);
   if (res == t_true)
     *evolution_of_loop = add_to_evolution
       (loop->num, chrec_convert (type_rhs, *evolution_of_loop,
      at_stmt),
        129, rhs0, at_stmt);

   else if (res == t_dont_know)
     *evolution_of_loop = chrec_dont_know;
 }

      else



 res = t_false;

      break;

    case 131:

      rhs0 = TREE_OPERAND (rhs, 0);
      rhs1 = TREE_OPERAND (rhs, 1);
      STRIP_TYPE_NOPS (rhs0);
      STRIP_TYPE_NOPS (rhs1);

      if (TREE_CODE (rhs0) == 128)
 {


   res = follow_ssa_edge (loop, SSA_NAME_DEF_STMT (rhs0), halting_phi,
     evolution_of_loop, limit);
   if (res == t_true)
     *evolution_of_loop = add_to_evolution
       (loop->num, chrec_convert (type_rhs, *evolution_of_loop, at_stmt),
        131, rhs1, at_stmt);

   else if (res == t_dont_know)
     *evolution_of_loop = chrec_dont_know;
 }
      else



 res = t_false;

      break;

    case 133:
      {


 tree op0 = ASSERT_EXPR_VAR (rhs);
 if (TREE_CODE (op0) == 128)
   res = follow_ssa_edge (loop, SSA_NAME_DEF_STMT (op0),
     halting_phi, evolution_of_loop, limit);
 else
   res = t_false;
 break;
      }


    default:
      res = t_false;
      break;
    }

  return res;
}
