
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
struct object_size_info {int* depths; unsigned int* tos; unsigned int* stack; size_t object_size_type; int reexamine; } ;


 int CALL_EXPR ;
 int INTEGER_CST ;

 int PHI_ARG_DEF (int ,int) ;

 int PHI_NUM_ARGS (int ) ;
 int PLUS_EXPR ;

 int SSA_NAME ;
 int SSA_NAME_DEF_STMT (int ) ;
 unsigned int SSA_NAME_VERSION (int ) ;
 int STRIP_NOPS (int ) ;
 int TREE_CODE (int ) ;
 int TREE_OPERAND (int ,int) ;
 int bitmap_bit_p (int ,unsigned int) ;
 int bitmap_clear_bit (int ,unsigned int) ;
 int bitmap_set_bit (int ,unsigned int) ;
 int * computed ;
 int gcc_assert (int) ;
 int gcc_unreachable () ;
 int integer_zerop (int ) ;
 scalar_t__** object_sizes ;
 int pass_through_call (int ) ;

__attribute__((used)) static void
check_for_plus_in_loops_1 (struct object_size_info *osi, tree var,
      unsigned int depth)
{
  tree stmt = SSA_NAME_DEF_STMT (var);
  unsigned int varno = SSA_NAME_VERSION (var);

  if (osi->depths[varno])
    {
      if (osi->depths[varno] != depth)
 {
   unsigned int *sp;


   for (sp = osi->tos; sp > osi->stack; )
     {
       --sp;
       bitmap_clear_bit (osi->reexamine, *sp);
       bitmap_set_bit (computed[osi->object_size_type], *sp);
       object_sizes[osi->object_size_type][*sp] = 0;
       if (*sp == varno)
  break;
     }
 }
      return;
    }
  else if (! bitmap_bit_p (osi->reexamine, varno))
    return;

  osi->depths[varno] = depth;
  *osi->tos++ = varno;

  switch (TREE_CODE (stmt))
    {
    case 128:
      gcc_assert (TREE_CODE (TREE_OPERAND (stmt, 0)) == 130);
      stmt = TREE_OPERAND (stmt, 0);


    case 130:
      {
 tree rhs = TREE_OPERAND (stmt, 1), arg;
 STRIP_NOPS (rhs);

 if (TREE_CODE (rhs) == CALL_EXPR)
   {
     arg = pass_through_call (rhs);
     if (arg)
       rhs = arg;
   }

 if (TREE_CODE (rhs) == SSA_NAME)
   check_for_plus_in_loops_1 (osi, rhs, depth);
 else if (TREE_CODE (rhs) == PLUS_EXPR)
   {
     tree op0 = TREE_OPERAND (rhs, 0);
     tree op1 = TREE_OPERAND (rhs, 1);
     tree cst, basevar;

     if (TREE_CODE (op0) == SSA_NAME)
       {
  basevar = op0;
  cst = op1;
       }
     else
       {
  basevar = op1;
  cst = op0;
  gcc_assert (TREE_CODE (basevar) == SSA_NAME);
       }
     gcc_assert (TREE_CODE (cst) == INTEGER_CST);

     check_for_plus_in_loops_1 (osi, basevar,
           depth + !integer_zerop (cst));
   }
 else
   gcc_unreachable ();
 break;
      }
    case 129:
      {
 int i;

 for (i = 0; i < PHI_NUM_ARGS (stmt); i++)
   {
     tree rhs = PHI_ARG_DEF (stmt, i);

     if (TREE_CODE (rhs) == SSA_NAME)
       check_for_plus_in_loops_1 (osi, rhs, depth);
   }
 break;
      }
    default:
      gcc_unreachable ();
    }

  osi->depths[varno] = 0;
  osi->tos--;
}
