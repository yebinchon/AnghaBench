
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 scalar_t__ DECL_CONV_FN_P (scalar_t__) ;
 int DECL_INNERMOST_TEMPLATE_PARMS (scalar_t__) ;
 int DECL_NTPARMS (scalar_t__) ;
 scalar_t__ DECL_TEMPLATE_INFO (scalar_t__) ;
 scalar_t__ DECL_TI_TEMPLATE (scalar_t__) ;
 int DEDUCE_EXACT ;
 int LOOKUP_NORMAL ;
 scalar_t__ NULL_TREE ;
 scalar_t__ TREE_TYPE (scalar_t__) ;
 int TYPE_ARG_TYPES (scalar_t__) ;
 scalar_t__ coerce_template_parms (int ,scalar_t__,scalar_t__,int ,int,int) ;
 scalar_t__ error_mark_node ;
 scalar_t__ fn_type_unification (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int ,int ) ;
 scalar_t__ make_tree_vec (int) ;
 scalar_t__ skip_artificial_parms_for (scalar_t__,int ) ;
 int tf_none ;
 scalar_t__ tsubst (scalar_t__,scalar_t__,int ,scalar_t__) ;
 scalar_t__ uses_template_parms (scalar_t__) ;

__attribute__((used)) static tree
get_bindings (tree fn, tree decl, tree explicit_args, bool check_rettype)
{
  int ntparms = DECL_NTPARMS (fn);
  tree targs = make_tree_vec (ntparms);
  tree decl_type;
  tree decl_arg_types;




  decl_type = TREE_TYPE (decl);
  if (explicit_args && uses_template_parms (decl_type))
    {
      tree tmpl;
      tree converted_args;

      if (DECL_TEMPLATE_INFO (decl))
 tmpl = DECL_TI_TEMPLATE (decl);
      else

 return NULL_TREE;

      converted_args
 = coerce_template_parms (DECL_INNERMOST_TEMPLATE_PARMS (tmpl),
     explicit_args, NULL_TREE,
     tf_none,
                          0,
                          0);
      if (converted_args == error_mark_node)
 return NULL_TREE;

      decl_type = tsubst (decl_type, converted_args, tf_none, NULL_TREE);
      if (decl_type == error_mark_node)
 return NULL_TREE;
    }


  decl_arg_types = skip_artificial_parms_for (decl,
           TYPE_ARG_TYPES (decl_type));

  if (fn_type_unification (fn, explicit_args, targs,
      decl_arg_types,
      (check_rettype || DECL_CONV_FN_P (fn)
       ? TREE_TYPE (decl_type) : NULL_TREE),
      DEDUCE_EXACT, LOOKUP_NORMAL))
    return NULL_TREE;

  return targs;
}
