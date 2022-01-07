
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef scalar_t__ rtx ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;


 size_t BUILT_IN_STRCPY ;
 scalar_t__ CONST_INT ;
 int EXPAND_NORMAL ;
 scalar_t__ GET_CODE (scalar_t__) ;
 scalar_t__ GET_MODE (scalar_t__) ;
 scalar_t__ INTEGER_CST ;
 int INTVAL (scalar_t__) ;
 int NULL_RTX ;
 int NULL_TREE ;
 int PLUS_EXPR ;
 int POINTER_TYPE ;
 int TREE_CHAIN (int ) ;
 scalar_t__ TREE_CODE (int ) ;
 int TREE_OPERAND (int ,int) ;
 int TREE_TYPE (int ) ;
 int TREE_VALUE (int ) ;
 int VOID_TYPE ;
 int VOIDmode ;
 int build_function_call_expr (int ,int ) ;
 int build_tree_list (int ,int ) ;
 int c_getstr (int ) ;
 int c_strlen (int ,int ) ;
 scalar_t__ const0_rtx ;
 scalar_t__ emit_move_insn (scalar_t__,int ) ;
 scalar_t__ expand_builtin_mempcpy (int ,int ,scalar_t__,int,int) ;
 scalar_t__ expand_builtin_strcpy (int ,int ,scalar_t__,int) ;
 scalar_t__ expand_expr (int ,scalar_t__,int,int ) ;
 scalar_t__ expand_movstr (int ,int ,scalar_t__,int) ;
 scalar_t__ expand_normal (int ) ;
 int force_operand (scalar_t__,int ) ;
 int gcc_assert (scalar_t__) ;
 scalar_t__ gen_lowpart (scalar_t__,scalar_t__) ;
 scalar_t__ gen_reg_rtx (scalar_t__) ;
 int get_callee_fndecl (int ) ;
 int * implicit_built_in_decls ;
 scalar_t__ plus_constant (scalar_t__,int ) ;
 int size_binop (int ,int ,int ) ;
 int ssize_int (int) ;
 int tree_cons (int ,int ,int ) ;
 int validate_arglist (int ,int ,int ,int ) ;

__attribute__((used)) static rtx
expand_builtin_stpcpy (tree exp, rtx target, enum machine_mode mode)
{
  tree arglist = TREE_OPERAND (exp, 1);

  if (target == const0_rtx)
    {
      tree fn = implicit_built_in_decls[BUILT_IN_STRCPY];
      if (!fn)
 return 0;

      return expand_expr (build_function_call_expr (fn, arglist),
     target, mode, EXPAND_NORMAL);
    }

  if (!validate_arglist (arglist, POINTER_TYPE, POINTER_TYPE, VOID_TYPE))
    return 0;
  else
    {
      tree dst, src, len, lenp1;
      tree narglist;
      rtx ret;





      src = TREE_VALUE (TREE_CHAIN (arglist));
      if (! c_getstr (src) || ! (len = c_strlen (src, 0)))
 return expand_movstr (TREE_VALUE (arglist),
         TREE_VALUE (TREE_CHAIN (arglist)),
         target, 2);

      dst = TREE_VALUE (arglist);
      lenp1 = size_binop (PLUS_EXPR, len, ssize_int (1));
      narglist = build_tree_list (NULL_TREE, lenp1);
      narglist = tree_cons (NULL_TREE, src, narglist);
      narglist = tree_cons (NULL_TREE, dst, narglist);
      ret = expand_builtin_mempcpy (narglist, TREE_TYPE (exp),
        target, mode, 2);

      if (ret)
 return ret;

      if (TREE_CODE (len) == INTEGER_CST)
 {
   rtx len_rtx = expand_normal (len);

   if (GET_CODE (len_rtx) == CONST_INT)
     {
       ret = expand_builtin_strcpy (get_callee_fndecl (exp),
        arglist, target, mode);

       if (ret)
  {
    if (! target)
      {
        if (mode != VOIDmode)
   target = gen_reg_rtx (mode);
        else
   target = gen_reg_rtx (GET_MODE (ret));
      }
    if (GET_MODE (target) != GET_MODE (ret))
      ret = gen_lowpart (GET_MODE (target), ret);

    ret = plus_constant (ret, INTVAL (len_rtx));
    ret = emit_move_insn (target, force_operand (ret, NULL_RTX));
    gcc_assert (ret);

    return target;
  }
     }
 }

      return expand_movstr (TREE_VALUE (arglist),
       TREE_VALUE (TREE_CHAIN (arglist)),
       target, 2);
    }
}
