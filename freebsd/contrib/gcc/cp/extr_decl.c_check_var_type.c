
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 scalar_t__ IDENTIFIER_NODE ;
 int IDENTIFIER_OPNAME_P (int ) ;
 scalar_t__ TREE_CODE (int ) ;
 scalar_t__ VOID_TYPE_P (int ) ;
 int error (char*,...) ;
 int error_mark_node ;
 int gcc_assert (int) ;

tree
check_var_type (tree identifier, tree type)
{
  if (VOID_TYPE_P (type))
    {
      if (!identifier)
 error ("unnamed variable or field declared void");
      else if (TREE_CODE (identifier) == IDENTIFIER_NODE)
 {
   gcc_assert (!IDENTIFIER_OPNAME_P (identifier));
   error ("variable or field %qE declared void", identifier);
 }
      else
 error ("variable or field declared void");
      type = error_mark_node;
    }

  return type;
}
