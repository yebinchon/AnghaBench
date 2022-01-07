
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 scalar_t__ NULL_TREE ;
 int POINTER_TYPE ;
 int TREE_VALUE (scalar_t__) ;
 int VOID_TYPE ;
 scalar_t__ c_strlen (int ,int ) ;
 scalar_t__ fold_convert (scalar_t__,scalar_t__) ;
 scalar_t__ size_type_node ;
 int validate_arglist (scalar_t__,int ,int ) ;

__attribute__((used)) static tree
fold_builtin_strlen (tree arglist)
{
  if (!validate_arglist (arglist, POINTER_TYPE, VOID_TYPE))
    return NULL_TREE;
  else
    {
      tree len = c_strlen (TREE_VALUE (arglist), 0);

      if (len)
 {

   if (size_type_node)
     len = fold_convert (size_type_node, len);
   return len;
 }

      return NULL_TREE;
    }
}
