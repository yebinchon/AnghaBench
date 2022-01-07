
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;
struct z_candidate {int * second_conv; } ;
typedef int conversion ;


 scalar_t__ IS_AGGR_TYPE (scalar_t__) ;
 int LOOKUP_NO_CONVERSION ;
 int LOOKUP_ONLYCONVERTING ;
 scalar_t__ NULL_TREE ;
 scalar_t__ REFERENCE_TYPE ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 struct z_candidate* build_user_type_conversion_1 (scalar_t__,scalar_t__,int ) ;
 scalar_t__ error_mark_node ;
 int * reference_binding (scalar_t__,scalar_t__,scalar_t__,int,int) ;
 int * standard_conversion (scalar_t__,scalar_t__,scalar_t__,int,int) ;

__attribute__((used)) static conversion *
implicit_conversion (tree to, tree from, tree expr, bool c_cast_p,
       int flags)
{
  conversion *conv;

  if (from == error_mark_node || to == error_mark_node
      || expr == error_mark_node)
    return ((void*)0);

  if (TREE_CODE (to) == REFERENCE_TYPE)
    conv = reference_binding (to, from, expr, c_cast_p, flags);
  else
    conv = standard_conversion (to, from, expr, c_cast_p, flags);

  if (conv)
    return conv;

  if (expr != NULL_TREE
      && (IS_AGGR_TYPE (from)
   || IS_AGGR_TYPE (to))
      && (flags & LOOKUP_NO_CONVERSION) == 0)
    {
      struct z_candidate *cand;

      cand = build_user_type_conversion_1
 (to, expr, LOOKUP_ONLYCONVERTING);
      if (cand)
 conv = cand->second_conv;




      return conv;
    }

  return ((void*)0);
}
