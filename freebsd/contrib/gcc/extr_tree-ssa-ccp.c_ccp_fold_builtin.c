
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int val ;
typedef scalar_t__ tree ;
typedef int bitmap ;


 int BITMAP_ALLOC (int *) ;
 int BITMAP_FREE (int ) ;


 scalar_t__ BUILT_IN_MD ;
 scalar_t__ DECL_BUILT_IN_CLASS (scalar_t__) ;
 int DECL_FUNCTION_CODE (scalar_t__) ;
 scalar_t__ MODIFY_EXPR ;
 scalar_t__ NULL_TREE ;
 int STRIP_NOPS (scalar_t__) ;
 scalar_t__ TREE_CHAIN (scalar_t__) ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 scalar_t__ TREE_OPERAND (scalar_t__,int) ;
 int TREE_TYPE (scalar_t__) ;
 int TREE_VALUE (scalar_t__) ;
 int bitmap_clear (int ) ;
 scalar_t__ fold_builtin (scalar_t__,scalar_t__,int) ;
 scalar_t__ fold_builtin_fputs (scalar_t__,int,int,scalar_t__) ;
 scalar_t__ fold_builtin_memory_chk (scalar_t__,scalar_t__,scalar_t__,int,int) ;
 scalar_t__ fold_builtin_snprintf_chk (scalar_t__,scalar_t__,int) ;
 scalar_t__ fold_builtin_strcpy (scalar_t__,scalar_t__,scalar_t__) ;
 scalar_t__ fold_builtin_strncpy (scalar_t__,scalar_t__,scalar_t__) ;
 scalar_t__ fold_builtin_strncpy_chk (scalar_t__,scalar_t__) ;
 scalar_t__ fold_builtin_stxcpy_chk (scalar_t__,scalar_t__,scalar_t__,int,int) ;
 scalar_t__ fold_convert (int ,scalar_t__) ;
 scalar_t__ fold_ignored_result (scalar_t__) ;
 int gcc_unreachable () ;
 scalar_t__ get_callee_fndecl (scalar_t__) ;
 int get_maxval_strlen (int ,scalar_t__*,int ,int) ;
 int is_gimple_cast (scalar_t__) ;
 int is_gimple_val (scalar_t__) ;
 int memset (scalar_t__*,int ,int) ;

__attribute__((used)) static tree
ccp_fold_builtin (tree stmt, tree fn)
{
  tree result, val[3];
  tree callee, arglist, a;
  int arg_mask, i, type;
  bitmap visited;
  bool ignore;

  ignore = TREE_CODE (stmt) != MODIFY_EXPR;



  callee = get_callee_fndecl (fn);
  arglist = TREE_OPERAND (fn, 1);
  result = fold_builtin (callee, arglist, ignore);
  if (result)
    {
      if (ignore)
 STRIP_NOPS (result);
      return result;
    }


  if (DECL_BUILT_IN_CLASS (callee) == BUILT_IN_MD)
    return NULL_TREE;



  if (!arglist)
    return NULL_TREE;


  switch (DECL_FUNCTION_CODE (callee))
    {
    case 131:
    case 141:
    case 140:
      arg_mask = 1;
      type = 0;
      break;
    case 133:
    case 130:
      arg_mask = 2;
      type = 0;
      break;
    case 139:
    case 137:
    case 138:
    case 136:
    case 129:
      arg_mask = 4;
      type = 2;
      break;
    case 132:
    case 134:
      arg_mask = 2;
      type = 1;
      break;
    case 135:
    case 128:
      arg_mask = 2;
      type = 2;
      break;
    default:
      return NULL_TREE;
    }


  visited = BITMAP_ALLOC (((void*)0));

  memset (val, 0, sizeof (val));
  for (i = 0, a = arglist;
       arg_mask;
       i++, arg_mask >>= 1, a = TREE_CHAIN (a))
    if (arg_mask & 1)
      {
 bitmap_clear (visited);
 if (!get_maxval_strlen (TREE_VALUE (a), &val[i], visited, type))
   val[i] = NULL_TREE;
      }

  BITMAP_FREE (visited);

  result = NULL_TREE;
  switch (DECL_FUNCTION_CODE (callee))
    {
    case 131:
      if (val[0])
 {
   tree new = fold_convert (TREE_TYPE (fn), val[0]);



   if (is_gimple_val (new)
       || (is_gimple_cast (new)
    && is_gimple_val (TREE_OPERAND (new, 0))))
     return new;
 }
      break;

    case 133:
      if (val[1] && is_gimple_val (val[1]))
 result = fold_builtin_strcpy (callee, arglist, val[1]);
      break;

    case 130:
      if (val[1] && is_gimple_val (val[1]))
 result = fold_builtin_strncpy (callee, arglist, val[1]);
      break;

    case 141:
      result = fold_builtin_fputs (arglist,
       TREE_CODE (stmt) != MODIFY_EXPR, 0,
       val[0]);
      break;

    case 140:
      result = fold_builtin_fputs (arglist,
       TREE_CODE (stmt) != MODIFY_EXPR, 1,
       val[0]);
      break;

    case 139:
    case 137:
    case 138:
    case 136:
      if (val[2] && is_gimple_val (val[2]))
 result = fold_builtin_memory_chk (callee, arglist, val[2], ignore,
       DECL_FUNCTION_CODE (callee));
      break;

    case 132:
    case 134:
      if (val[1] && is_gimple_val (val[1]))
 result = fold_builtin_stxcpy_chk (callee, arglist, val[1], ignore,
       DECL_FUNCTION_CODE (callee));
      break;

    case 129:
      if (val[2] && is_gimple_val (val[2]))
 result = fold_builtin_strncpy_chk (arglist, val[2]);
      break;

    case 135:
    case 128:
      if (val[1] && is_gimple_val (val[1]))
 result = fold_builtin_snprintf_chk (arglist, val[1],
         DECL_FUNCTION_CODE (callee));
      break;

    default:
      gcc_unreachable ();
    }

  if (result && ignore)
    result = fold_ignored_result (result);
  return result;
}
