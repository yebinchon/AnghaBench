
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 size_t BUILT_IN_STRCHR ;
 int NULL_TREE ;
 int PLUS_EXPR ;
 int POINTER_TYPE ;
 int TREE_CHAIN (int ) ;
 int TREE_TYPE (int ) ;
 int TREE_VALUE (int ) ;
 int VOID_TYPE ;
 int build_function_call_expr (int ,int ) ;
 int build_int_cst (int ,char const) ;
 int build_tree_list (int ,int ) ;
 char* c_getstr (int ) ;
 int fold_build2 (int ,int ,int ,int ) ;
 int fold_convert (int ,int ) ;
 int * implicit_built_in_decls ;
 int integer_zero_node ;
 int omit_one_operand (int ,int ,int ) ;
 char* strpbrk (char const*,char const*) ;
 int tree_cons (int ,int ,int ) ;
 int validate_arglist (int ,int ,int ,int ) ;

__attribute__((used)) static tree
fold_builtin_strpbrk (tree arglist, tree type)
{
  if (!validate_arglist (arglist, POINTER_TYPE, POINTER_TYPE, VOID_TYPE))
    return 0;
  else
    {
      tree s1 = TREE_VALUE (arglist), s2 = TREE_VALUE (TREE_CHAIN (arglist));
      tree fn;
      const char *p1, *p2;

      p2 = c_getstr (s2);
      if (p2 == ((void*)0))
 return 0;

      p1 = c_getstr (s1);
      if (p1 != ((void*)0))
 {
   const char *r = strpbrk (p1, p2);
   tree tem;

   if (r == ((void*)0))
     return build_int_cst (TREE_TYPE (s1), 0);


   tem = fold_build2 (PLUS_EXPR, TREE_TYPE (s1),
        s1, build_int_cst (TREE_TYPE (s1), r - p1));
   return fold_convert (type, tem);
 }

      if (p2[0] == '\0')


 return omit_one_operand (TREE_TYPE (s1), integer_zero_node, s1);

      if (p2[1] != '\0')
 return 0;

      fn = implicit_built_in_decls[BUILT_IN_STRCHR];
      if (!fn)
 return 0;



      arglist = build_tree_list (NULL_TREE,
     build_int_cst (NULL_TREE, p2[0]));
      arglist = tree_cons (NULL_TREE, s1, arglist);
      return build_function_call_expr (fn, arglist);
    }
}
