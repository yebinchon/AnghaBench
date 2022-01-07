
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 size_t BUILT_IN_STRLEN ;
 int NULL_TREE ;
 int POINTER_TYPE ;
 int TREE_CHAIN (int ) ;
 int TREE_VALUE (int ) ;
 int VOID_TYPE ;
 int build_function_call_expr (int ,int ) ;
 int build_tree_list (int ,int ) ;
 char* c_getstr (int ) ;
 int * implicit_built_in_decls ;
 int integer_type_node ;
 int integer_zero_node ;
 int omit_one_operand (int ,int ,int ) ;
 int size_int (size_t const) ;
 size_t strcspn (char const*,char const*) ;
 int validate_arglist (int ,int ,int ,int ) ;

__attribute__((used)) static tree
fold_builtin_strcspn (tree arglist)
{
  if (!validate_arglist (arglist, POINTER_TYPE, POINTER_TYPE, VOID_TYPE))
    return 0;
  else
    {
      tree s1 = TREE_VALUE (arglist), s2 = TREE_VALUE (TREE_CHAIN (arglist));
      const char *p1 = c_getstr (s1), *p2 = c_getstr (s2);


      if (p1 && p2)
 {
   const size_t r = strcspn (p1, p2);
   return size_int (r);
 }


      if (p1 && *p1 == '\0')
 {


   return omit_one_operand (integer_type_node,
       integer_zero_node, s2);
 }


      if (p2 && *p2 == '\0')
 {
   tree newarglist = build_tree_list (NULL_TREE, s1),
     fn = implicit_built_in_decls[BUILT_IN_STRLEN];



   if (!fn)
     return 0;

   return build_function_call_expr (fn, newarglist);
 }
      return 0;
    }
}
