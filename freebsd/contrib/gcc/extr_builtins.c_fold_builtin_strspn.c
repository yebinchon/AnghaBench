
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int POINTER_TYPE ;
 int TREE_CHAIN (int ) ;
 int TREE_VALUE (int ) ;
 int VOID_TYPE ;
 char* c_getstr (int ) ;
 int integer_type_node ;
 int integer_zero_node ;
 int omit_two_operands (int ,int ,int ,int ) ;
 int size_int (size_t const) ;
 size_t strspn (char const*,char const*) ;
 int validate_arglist (int ,int ,int ,int ) ;

__attribute__((used)) static tree
fold_builtin_strspn (tree arglist)
{
  if (!validate_arglist (arglist, POINTER_TYPE, POINTER_TYPE, VOID_TYPE))
    return 0;
  else
    {
      tree s1 = TREE_VALUE (arglist), s2 = TREE_VALUE (TREE_CHAIN (arglist));
      const char *p1 = c_getstr (s1), *p2 = c_getstr (s2);


      if (p1 && p2)
 {
   const size_t r = strspn (p1, p2);
   return size_int (r);
 }


      if ((p1 && *p1 == '\0') || (p2 && *p2 == '\0'))


 return omit_two_operands (integer_type_node, integer_zero_node,
      s1, s2);
      return 0;
    }
}
