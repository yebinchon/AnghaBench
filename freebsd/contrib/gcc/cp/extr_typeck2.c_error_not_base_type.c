
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char* tree ;


 char* DECL_CONTEXT (char*) ;
 scalar_t__ FUNCTION_DECL ;
 scalar_t__ TREE_CODE (char*) ;
 int error (char*,char*,char*) ;
 char* error_mark_node ;

tree
error_not_base_type (tree basetype, tree type)
{
  if (TREE_CODE (basetype) == FUNCTION_DECL)
    basetype = DECL_CONTEXT (basetype);
  error ("type %qT is not a base type for type %qT", basetype, type);
  return error_mark_node;
}
