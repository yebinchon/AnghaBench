
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 int COMPLETE_TYPE_P (scalar_t__) ;
 scalar_t__ NULL_TREE ;
 scalar_t__ complete_type (scalar_t__) ;
 int cxx_incomplete_type_diagnostic (scalar_t__,scalar_t__,int ) ;
 scalar_t__ error_mark_node ;

tree
complete_type_or_else (tree type, tree value)
{
  type = complete_type (type);
  if (type == error_mark_node)

    return NULL_TREE;
  else if (!COMPLETE_TYPE_P (type))
    {
      cxx_incomplete_type_diagnostic (value, type, 0);
      return NULL_TREE;
    }
  else
    return type;
}
