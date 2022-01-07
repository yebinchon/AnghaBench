
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * tree ;
typedef enum tree_code_class { ____Placeholder_tree_code_class } tree_code_class ;
typedef enum tree_code { ____Placeholder_tree_code } tree_code ;


 int IDENTIFIER_NODE ;
 scalar_t__ RECORD_TYPE ;
 scalar_t__ TREE_CODE (int *) ;
 int TREE_CODE_CLASS (int) ;
 int * TREE_TYPE (int *) ;
 int tcc_exceptional ;

tree
c_return_interface_record_type (tree typename)
{
  enum tree_code_class class;
  enum tree_code code;
  tree retval = ((void*)0);

  if (typename == ((void*)0))
      return retval;

  code = TREE_CODE (typename);
  class = TREE_CODE_CLASS (code);

  if (code != IDENTIFIER_NODE
      || class != tcc_exceptional)
      return retval;

  if (TREE_TYPE (typename)
      && TREE_CODE (TREE_TYPE (typename)) == RECORD_TYPE)
      retval = TREE_TYPE (typename);

  if (retval
      && TREE_CODE (retval) != RECORD_TYPE)
      retval = ((void*)0);

  return retval;
}
