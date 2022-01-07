
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;
typedef scalar_t__ DECL_INITIAL ;


 int ADDR_EXPR ;
 int DIRECT_BIND ;
 scalar_t__ IS_AGGR_TYPE (scalar_t__) ;
 int LOOKUP_ONLYCONVERTING ;
 int LOOKUP_PROTECT ;
 scalar_t__ NULL_TREE ;
 int PLUS_EXPR ;
 scalar_t__ REFERENCE_TYPE ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 scalar_t__ TREE_TYPE (scalar_t__) ;
 scalar_t__ TYPE_MAIN_VARIANT (scalar_t__) ;
 int ba_check ;
 scalar_t__ build_base_path (int ,scalar_t__,scalar_t__,int) ;
 scalar_t__ build_nop (scalar_t__,scalar_t__) ;
 int build_pointer_type (scalar_t__) ;
 scalar_t__ build_unary_op (int ,scalar_t__,int) ;
 scalar_t__ convert_to_pointer_force (int ,scalar_t__) ;
 int cp_finish_decl (scalar_t__,scalar_t__,int,scalar_t__,int) ;
 scalar_t__ error_mark_node ;
 scalar_t__ error_not_base_type (scalar_t__,scalar_t__) ;
 int gcc_assert (int) ;
 scalar_t__ get_target_expr (scalar_t__) ;
 scalar_t__ lookup_base (scalar_t__,scalar_t__,int ,int *) ;
 int lvalue_p (scalar_t__) ;
 scalar_t__ make_temporary_var_for_ref_to_temp (scalar_t__,scalar_t__) ;
 int real_lvalue_p (scalar_t__) ;

__attribute__((used)) static tree
build_up_reference (tree type, tree arg, int flags, tree decl)
{
  tree rval;
  tree argtype = TREE_TYPE (arg);
  tree target_type = TREE_TYPE (type);

  gcc_assert (TREE_CODE (type) == REFERENCE_TYPE);

  if ((flags & DIRECT_BIND) && ! real_lvalue_p (arg))
    {


      tree targ = arg;

      arg = make_temporary_var_for_ref_to_temp (decl, TREE_TYPE (arg));


      DECL_INITIAL (arg) = targ;
      cp_finish_decl (arg, targ, 0, NULL_TREE,
        LOOKUP_ONLYCONVERTING|DIRECT_BIND);
    }
  else if (!(flags & DIRECT_BIND) && ! lvalue_p (arg))
    return get_target_expr (arg);




  rval = build_unary_op (ADDR_EXPR, arg, 1);
  if (rval == error_mark_node)
    return error_mark_node;

  if ((flags & LOOKUP_PROTECT)
      && TYPE_MAIN_VARIANT (argtype) != TYPE_MAIN_VARIANT (target_type)
      && IS_AGGR_TYPE (argtype)
      && IS_AGGR_TYPE (target_type))
    {

      tree binfo = lookup_base (argtype, target_type, ba_check, ((void*)0));
      if (binfo == error_mark_node)
 return error_mark_node;
      if (binfo == NULL_TREE)
 return error_not_base_type (target_type, argtype);
      rval = build_base_path (PLUS_EXPR, rval, binfo, 1);
    }
  else
    rval
      = convert_to_pointer_force (build_pointer_type (target_type), rval);
  return build_nop (type, rval);
}
