
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 size_t BUILT_IN_STRCAT ;
 scalar_t__ INTEGER_CST ;
 int INTEGER_TYPE ;
 int NULL_TREE ;
 int POINTER_TYPE ;
 int TREE_CHAIN (int ) ;
 scalar_t__ TREE_CODE (int ) ;
 int TREE_TYPE (int ) ;
 int TREE_VALUE (int ) ;
 int VOID_TYPE ;
 int build_function_call_expr (int ,int ) ;
 int build_tree_list (int ,int ) ;
 char* c_getstr (int ) ;
 scalar_t__ compare_tree_int (int ,int ) ;
 int * implicit_built_in_decls ;
 scalar_t__ integer_zerop (int ) ;
 int omit_two_operands (int ,int ,int ,int ) ;
 int strlen (char const*) ;
 int tree_cons (int ,int ,int ) ;
 int validate_arglist (int ,int ,int ,int ,int ) ;

__attribute__((used)) static tree
fold_builtin_strncat (tree arglist)
{
  if (!validate_arglist (arglist,
    POINTER_TYPE, POINTER_TYPE, INTEGER_TYPE, VOID_TYPE))
    return 0;
  else
    {
      tree dst = TREE_VALUE (arglist);
      tree src = TREE_VALUE (TREE_CHAIN (arglist));
      tree len = TREE_VALUE (TREE_CHAIN (TREE_CHAIN (arglist)));
      const char *p = c_getstr (src);



      if (integer_zerop (len) || (p && *p == '\0'))
 return omit_two_operands (TREE_TYPE (dst), dst, src, len);



      if (TREE_CODE (len) == INTEGER_CST && p
   && compare_tree_int (len, strlen (p)) >= 0)
 {
   tree newarglist
     = tree_cons (NULL_TREE, dst, build_tree_list (NULL_TREE, src));
   tree fn = implicit_built_in_decls[BUILT_IN_STRCAT];



   if (!fn)
     return 0;

   return build_function_call_expr (fn, newarglist);
 }
      return 0;
    }
}
