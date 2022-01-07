
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 size_t BUILT_IN_FPUTC ;
 size_t BUILT_IN_FPUTC_UNLOCKED ;
 size_t BUILT_IN_FWRITE ;
 size_t BUILT_IN_FWRITE_UNLOCKED ;
 scalar_t__ INTEGER_CST ;
 int NULL_TREE ;
 int POINTER_TYPE ;
 scalar_t__ TREE_CHAIN (scalar_t__) ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 scalar_t__ TREE_VALUE (scalar_t__) ;
 int VOID_TYPE ;
 scalar_t__ build_function_call_expr (scalar_t__,scalar_t__) ;
 scalar_t__ build_int_cst (int ,char const) ;
 scalar_t__ build_tree_list (int ,scalar_t__) ;
 scalar_t__* built_in_decls ;
 char* c_getstr (scalar_t__) ;
 scalar_t__ c_strlen (scalar_t__,int ) ;
 int compare_tree_int (scalar_t__,int) ;
 int gcc_unreachable () ;
 scalar_t__* implicit_built_in_decls ;
 int integer_type_node ;
 int integer_zero_node ;
 scalar_t__ omit_one_operand (int ,int ,scalar_t__) ;
 int optimize_size ;
 scalar_t__ size_one_node ;
 scalar_t__ tree_cons (int ,scalar_t__,scalar_t__) ;
 int validate_arglist (scalar_t__,int ,int ,int ) ;

tree
fold_builtin_fputs (tree arglist, bool ignore, bool unlocked, tree len)
{
  tree fn;


  tree const fn_fputc = unlocked ? built_in_decls[BUILT_IN_FPUTC_UNLOCKED]
    : implicit_built_in_decls[BUILT_IN_FPUTC];
  tree const fn_fwrite = unlocked ? built_in_decls[BUILT_IN_FWRITE_UNLOCKED]
    : implicit_built_in_decls[BUILT_IN_FWRITE];


  if (!ignore)
    return 0;


  if (!validate_arglist (arglist, POINTER_TYPE, POINTER_TYPE, VOID_TYPE))
    return 0;

  if (! len)
    len = c_strlen (TREE_VALUE (arglist), 0);



  if (!len
      || TREE_CODE (len) != INTEGER_CST)
    return 0;

  switch (compare_tree_int (len, 1))
    {
    case -1:
      return omit_one_operand (integer_type_node, integer_zero_node,
          TREE_VALUE (TREE_CHAIN (arglist)));

    case 0:
      {
 const char *p = c_getstr (TREE_VALUE (arglist));

 if (p != ((void*)0))
   {


     arglist = build_tree_list (NULL_TREE,
           TREE_VALUE (TREE_CHAIN (arglist)));
     arglist = tree_cons (NULL_TREE,
     build_int_cst (NULL_TREE, p[0]),
     arglist);
     fn = fn_fputc;
     break;
   }
      }

    case 1:
      {
 tree string_arg;


 if (optimize_size)
   return 0;
 string_arg = TREE_VALUE (arglist);


 arglist = build_tree_list (NULL_TREE,
       TREE_VALUE (TREE_CHAIN (arglist)));
 arglist = tree_cons (NULL_TREE, len, arglist);
 arglist = tree_cons (NULL_TREE, size_one_node, arglist);
 arglist = tree_cons (NULL_TREE, string_arg, arglist);
 fn = fn_fwrite;
 break;
      }
    default:
      gcc_unreachable ();
    }



  if (!fn)
    return 0;



  return build_function_call_expr (fn, arglist);
}
