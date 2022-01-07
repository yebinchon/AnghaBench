
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 scalar_t__ BOUND_TEMPLATE_TEMPLATE_PARM ;
 int IS_AGGR_TYPE (scalar_t__) ;
 scalar_t__ TEMPLATE_TYPE_PARM ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 int error (char*,scalar_t__) ;
 scalar_t__ error_mark_node ;

int
is_aggr_type (tree type, int or_else)
{
  if (type == error_mark_node)
    return 0;

  if (! IS_AGGR_TYPE (type)
      && TREE_CODE (type) != TEMPLATE_TYPE_PARM
      && TREE_CODE (type) != BOUND_TEMPLATE_TEMPLATE_PARM)
    {
      if (or_else)
 error ("%qT is not an aggregate type", type);
      return 0;
    }
  return 1;
}
