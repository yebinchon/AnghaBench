
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef scalar_t__ tree ;
typedef int cp_lvalue_kind ;
struct TYPE_13__ {TYPE_1__* next; } ;
struct TYPE_14__ {int need_temporary_p; TYPE_2__ u; } ;
typedef TYPE_3__ conversion ;
struct TYPE_12__ {int check_copy_constructor_p; } ;


 scalar_t__ CLASS_TYPE_P (scalar_t__) ;
 int CP_TYPE_CONST_NON_VOLATILE_P (scalar_t__) ;
 scalar_t__ FUNCTION_TYPE ;
 int LOOKUP_CONSTRUCTOR_CALLABLE ;
 int LOOKUP_NO_CONVERSION ;
 int LOOKUP_NO_TEMP_BIND ;
 scalar_t__ REFERENCE_TYPE ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 scalar_t__ TREE_TYPE (scalar_t__) ;
 int TYPE_PACKED (scalar_t__) ;
 int at_least_as_qualified_p (scalar_t__,scalar_t__) ;
 TYPE_3__* build_conv (int ,scalar_t__,TYPE_3__*) ;
 TYPE_3__* build_identity_conv (scalar_t__,scalar_t__) ;
 scalar_t__ build_qualified_type (scalar_t__,int ) ;
 int ck_ref_bind ;
 int clk_bitfield ;
 int clk_none ;
 int clk_ordinary ;
 int clk_packed ;
 TYPE_3__* convert_class_to_reference (scalar_t__,scalar_t__,scalar_t__) ;
 int cp_type_quals (scalar_t__) ;
 TYPE_3__* direct_reference_binding (scalar_t__,TYPE_3__*) ;
 scalar_t__ error_mark_node ;
 TYPE_3__* implicit_conversion (scalar_t__,scalar_t__,scalar_t__,int,int) ;
 scalar_t__ instantiate_type (scalar_t__,scalar_t__,int ) ;
 int real_lvalue_p (scalar_t__) ;
 int reference_compatible_p (scalar_t__,scalar_t__) ;
 int reference_related_p (scalar_t__,scalar_t__) ;
 int tf_none ;
 scalar_t__ type_unknown_p (scalar_t__) ;

__attribute__((used)) static conversion *
reference_binding (tree rto, tree rfrom, tree expr, bool c_cast_p, int flags)
{
  conversion *conv = ((void*)0);
  tree to = TREE_TYPE (rto);
  tree from = rfrom;
  bool related_p;
  bool compatible_p;
  cp_lvalue_kind lvalue_p = clk_none;

  if (TREE_CODE (to) == FUNCTION_TYPE && expr && type_unknown_p (expr))
    {
      expr = instantiate_type (to, expr, tf_none);
      if (expr == error_mark_node)
 return ((void*)0);
      from = TREE_TYPE (expr);
    }

  if (TREE_CODE (from) == REFERENCE_TYPE)
    {

      lvalue_p = clk_ordinary;
      from = TREE_TYPE (from);
    }
  else if (expr)
    lvalue_p = real_lvalue_p (expr);




  related_p = reference_related_p (to, from);


  if (related_p && c_cast_p
      && !at_least_as_qualified_p (to, from))
    to = build_qualified_type (to, cp_type_quals (from));
  compatible_p = reference_compatible_p (to, from);

  if (lvalue_p && compatible_p)
    {
      conv = build_identity_conv (from, expr);
      conv = direct_reference_binding (rto, conv);
      if ((lvalue_p & clk_bitfield) != 0
   || ((lvalue_p & clk_packed) != 0 && !TYPE_PACKED (to)))
 conv->need_temporary_p = 1;

      return conv;
    }
  else if (CLASS_TYPE_P (from) && !(flags & LOOKUP_NO_CONVERSION))
    {
      conv = convert_class_to_reference (to, from, expr);
      if (conv)
 return conv;
    }



  if (flags & LOOKUP_NO_TEMP_BIND)
    return ((void*)0);
  if (!CP_TYPE_CONST_NON_VOLATILE_P (to))
    return ((void*)0);
  if (CLASS_TYPE_P (from) && compatible_p)
    {
      conv = build_identity_conv (from, expr);
      conv = direct_reference_binding (rto, conv);
      if (!(flags & LOOKUP_CONSTRUCTOR_CALLABLE))
 conv->u.next->check_copy_constructor_p = 1;
      return conv;
    }
  if (related_p && !at_least_as_qualified_p (to, from))
    return ((void*)0);

  conv = implicit_conversion (to, from, expr, c_cast_p,
         flags);
  if (!conv)
    return ((void*)0);

  conv = build_conv (ck_ref_bind, rto, conv);


  conv->need_temporary_p = 1;

  return conv;
}
