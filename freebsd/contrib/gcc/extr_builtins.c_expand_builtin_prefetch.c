
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ tree ;
typedef int rtx ;
struct TYPE_4__ {TYPE_1__* operand; } ;
struct TYPE_3__ {int mode; int (* predicate ) (int ,int ) ;} ;


 scalar_t__ CODE_FOR_prefetch ;
 int EXPAND_NORMAL ;
 scalar_t__ GET_MODE (int ) ;
 scalar_t__ HAVE_prefetch ;
 scalar_t__ INTEGER_CST ;
 int INTVAL (int ) ;
 int MEM_P (int ) ;
 int NULL_RTX ;
 int NULL_TREE ;
 int POINTER_TYPE ;
 scalar_t__ Pmode ;
 scalar_t__ TREE_CHAIN (scalar_t__) ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 scalar_t__ TREE_VALUE (scalar_t__) ;
 scalar_t__ build_int_cst (int ,int) ;
 int const0_rtx ;
 int convert_memory_address (scalar_t__,int ) ;
 int emit_insn (int ) ;
 int error (char*) ;
 int expand_expr (scalar_t__,int ,scalar_t__,int ) ;
 int expand_normal (scalar_t__) ;
 int force_reg (scalar_t__,int ) ;
 int gen_prefetch (int ,int ,int ) ;
 TYPE_2__* insn_data ;
 scalar_t__ integer_zero_node ;
 scalar_t__ side_effects_p (int ) ;
 int stub1 (int ,int ) ;
 int validate_arglist (scalar_t__,int ,int ) ;
 int warning (int ,char*) ;

__attribute__((used)) static void
expand_builtin_prefetch (tree arglist)
{
  tree arg0, arg1, arg2;
  rtx op0, op1, op2;

  if (!validate_arglist (arglist, POINTER_TYPE, 0))
    return;

  arg0 = TREE_VALUE (arglist);



  if (TREE_CHAIN (arglist))
    {
      arg1 = TREE_VALUE (TREE_CHAIN (arglist));
      if (TREE_CHAIN (TREE_CHAIN (arglist)))
 arg2 = TREE_VALUE (TREE_CHAIN (TREE_CHAIN (arglist)));
      else
 arg2 = build_int_cst (NULL_TREE, 3);
    }
  else
    {
      arg1 = integer_zero_node;
      arg2 = build_int_cst (NULL_TREE, 3);
    }


  op0 = expand_expr (arg0, NULL_RTX, Pmode, EXPAND_NORMAL);


  if (TREE_CODE (arg1) != INTEGER_CST)
    {
      error ("second argument to %<__builtin_prefetch%> must be a constant");
      arg1 = integer_zero_node;
    }
  op1 = expand_normal (arg1);

  if (INTVAL (op1) != 0 && INTVAL (op1) != 1)
    {
      warning (0, "invalid second argument to %<__builtin_prefetch%>;"
        " using zero");
      op1 = const0_rtx;
    }


  if (TREE_CODE (arg2) != INTEGER_CST)
    {
      error ("third argument to %<__builtin_prefetch%> must be a constant");
      arg2 = integer_zero_node;
    }
  op2 = expand_normal (arg2);

  if (INTVAL (op2) < 0 || INTVAL (op2) > 3)
    {
      warning (0, "invalid third argument to %<__builtin_prefetch%>; using zero");
      op2 = const0_rtx;
    }
  if (!MEM_P (op0) && side_effects_p (op0))
    emit_insn (op0);
}
