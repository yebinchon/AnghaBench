
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 size_t BUILT_IN_STRCHR ;
 scalar_t__ INTEGER_CST ;
 int INTEGER_TYPE ;
 int PLUS_EXPR ;
 int POINTER_TYPE ;
 int TREE_CHAIN (int ) ;
 scalar_t__ TREE_CODE (int ) ;
 int TREE_TYPE (int ) ;
 int TREE_VALUE (int ) ;
 int VOID_TYPE ;
 int build_function_call_expr (int ,int ) ;
 int build_int_cst (int ,int) ;
 char* c_getstr (int ) ;
 int fold_build2 (int ,int ,int ,int ) ;
 int fold_convert (int ,int ) ;
 int * implicit_built_in_decls ;
 int integer_zerop (int ) ;
 char* strrchr (char const*,char) ;
 scalar_t__ target_char_cast (int ,char*) ;
 int validate_arglist (int ,int ,int ,int ) ;

__attribute__((used)) static tree
fold_builtin_strrchr (tree arglist, tree type)
{
  if (!validate_arglist (arglist, POINTER_TYPE, INTEGER_TYPE, VOID_TYPE))
    return 0;
  else
    {
      tree s1 = TREE_VALUE (arglist), s2 = TREE_VALUE (TREE_CHAIN (arglist));
      tree fn;
      const char *p1;

      if (TREE_CODE (s2) != INTEGER_CST)
 return 0;

      p1 = c_getstr (s1);
      if (p1 != ((void*)0))
 {
   char c;
   const char *r;
   tree tem;

   if (target_char_cast (s2, &c))
     return 0;

   r = strrchr (p1, c);

   if (r == ((void*)0))
     return build_int_cst (TREE_TYPE (s1), 0);


   tem = fold_build2 (PLUS_EXPR, TREE_TYPE (s1),
        s1, build_int_cst (TREE_TYPE (s1), r - p1));
   return fold_convert (type, tem);
 }

      if (! integer_zerop (s2))
 return 0;

      fn = implicit_built_in_decls[BUILT_IN_STRCHR];
      if (!fn)
 return 0;


      return build_function_call_expr (fn, arglist);
    }
}
