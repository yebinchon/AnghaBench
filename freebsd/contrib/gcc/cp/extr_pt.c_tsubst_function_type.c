
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tsubst_flags_t ;
typedef scalar_t__ tree ;


 scalar_t__ ARRAY_TYPE ;
 scalar_t__ FUNCTION_TYPE ;
 int IS_AGGR_TYPE (scalar_t__) ;
 scalar_t__ NULL_TREE ;
 int TREE_CHAIN (scalar_t__) ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 scalar_t__ TREE_TYPE (scalar_t__) ;
 scalar_t__ TREE_VALUE (scalar_t__) ;
 int TYPE_ARG_TYPES (scalar_t__) ;
 int TYPE_ATTRIBUTES (scalar_t__) ;
 scalar_t__ TYPE_CONTEXT (scalar_t__) ;
 int TYPE_QUALS (scalar_t__) ;
 scalar_t__ build_function_type (scalar_t__,scalar_t__) ;
 scalar_t__ build_method_type_directly (scalar_t__,scalar_t__,int ) ;
 scalar_t__ cp_build_qualified_type_real (scalar_t__,int ,int) ;
 scalar_t__ cp_build_type_attribute_variant (scalar_t__,int ) ;
 int error (char*,...) ;
 scalar_t__ error_mark_node ;
 int gcc_assert (int) ;
 int tf_error ;
 scalar_t__ tsubst (scalar_t__,scalar_t__,int,scalar_t__) ;
 scalar_t__ tsubst_arg_types (int ,scalar_t__,int,scalar_t__) ;

__attribute__((used)) static tree
tsubst_function_type (tree t,
        tree args,
        tsubst_flags_t complain,
        tree in_decl)
{
  tree return_type;
  tree arg_types;
  tree fntype;


  gcc_assert (TYPE_CONTEXT (t) == NULL_TREE);


  return_type = tsubst (TREE_TYPE (t), args, complain, in_decl);
  if (return_type == error_mark_node)
    return error_mark_node;




  if (TREE_CODE (return_type) == ARRAY_TYPE
      || TREE_CODE (return_type) == FUNCTION_TYPE)
    {
      if (complain & tf_error)
 {
   if (TREE_CODE (return_type) == ARRAY_TYPE)
     error ("function returning an array");
   else
     error ("function returning a function");
 }
      return error_mark_node;
    }


  arg_types = tsubst_arg_types (TYPE_ARG_TYPES (t), args,
    complain, in_decl);
  if (arg_types == error_mark_node)
    return error_mark_node;


  if (TREE_CODE (t) == FUNCTION_TYPE)
    fntype = build_function_type (return_type, arg_types);
  else
    {
      tree r = TREE_TYPE (TREE_VALUE (arg_types));
      if (! IS_AGGR_TYPE (r))
 {







   if (complain & tf_error)
     error ("creating pointer to member function of non-class type %qT",
        r);
   return error_mark_node;
 }

      fntype = build_method_type_directly (r, return_type,
        TREE_CHAIN (arg_types));
    }
  fntype = cp_build_qualified_type_real (fntype, TYPE_QUALS (t), complain);
  fntype = cp_build_type_attribute_variant (fntype, TYPE_ATTRIBUTES (t));

  return fntype;
}
