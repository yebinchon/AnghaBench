
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int tree ;
struct TYPE_2__ {int * parray; } ;


 int CHREC_LEFT (int ) ;
 int CHREC_RIGHT (int ) ;
 unsigned int CHREC_VARIABLE (int ) ;
 scalar_t__ POLYNOMIAL_CHREC ;
 scalar_t__ SSA_NAME ;
 scalar_t__ TREE_CODE (int ) ;
 int TREE_CODE_LENGTH (scalar_t__) ;
 int TREE_OPERAND (int ,int) ;
 TYPE_1__* current_loops ;
 scalar_t__ evolution_function_is_constant_p (int ) ;
 scalar_t__ expr_invariant_in_loop_p (int ,int ) ;

__attribute__((used)) static bool
evolution_function_is_invariant_rec_p (tree chrec, int loopnum)
{
  if (evolution_function_is_constant_p (chrec))
    return 1;

  if (TREE_CODE (chrec) == SSA_NAME
      && expr_invariant_in_loop_p (current_loops->parray[loopnum],
       chrec))
    return 1;

  if (TREE_CODE (chrec) == POLYNOMIAL_CHREC)
    {
      if (CHREC_VARIABLE (chrec) == (unsigned) loopnum
   || !evolution_function_is_invariant_rec_p (CHREC_RIGHT (chrec),
           loopnum)
   || !evolution_function_is_invariant_rec_p (CHREC_LEFT (chrec),
           loopnum))
 return 0;
      return 1;
    }

  switch (TREE_CODE_LENGTH (TREE_CODE (chrec)))
    {
    case 2:
      if (!evolution_function_is_invariant_rec_p (TREE_OPERAND (chrec, 1),
        loopnum))
 return 0;

    case 1:
      if (!evolution_function_is_invariant_rec_p (TREE_OPERAND (chrec, 0),
        loopnum))
 return 0;
      return 1;

    default:
      return 0;
    }

  return 0;
}
