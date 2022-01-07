
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int unification_kind_t ;
typedef scalar_t__ tree ;
struct z_candidate {int template_decl; } ;


 scalar_t__ CLASSTYPE_VBASECLASSES (int ) ;
 scalar_t__ DECL_BASE_CONSTRUCTOR_P (scalar_t__) ;
 scalar_t__ DECL_CONSTRUCTOR_P (scalar_t__) ;
 int DECL_CONTEXT (scalar_t__) ;
 scalar_t__ DECL_MAYBE_IN_CHARGE_CONSTRUCTOR_P (scalar_t__) ;
 scalar_t__ DECL_NONSTATIC_MEMBER_FUNCTION_P (scalar_t__) ;
 int DECL_NTPARMS (scalar_t__) ;
 int DECL_TEMPLATE_INFO (scalar_t__) ;
 scalar_t__ DECL_TI_TEMPLATE (scalar_t__) ;
 scalar_t__ FUNCTION_FIRST_USER_PARMTYPE (scalar_t__) ;
 scalar_t__ NULL_TREE ;
 scalar_t__ TREE_CHAIN (scalar_t__) ;
 int TREE_VALUE (scalar_t__) ;
 int TYPE_MAIN_VARIANT (int ) ;
 struct z_candidate* add_conv_candidate (struct z_candidate**,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 struct z_candidate* add_function_candidate (struct z_candidate**,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int) ;
 scalar_t__ error_mark_node ;
 int fn_type_unification (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int ,int) ;
 scalar_t__ instantiate_template (scalar_t__,scalar_t__,int ) ;
 int list_length (scalar_t__) ;
 scalar_t__ make_tree_vec (int) ;
 scalar_t__ same_type_p (int ,scalar_t__) ;
 int tf_none ;
 int tree_cons (scalar_t__,scalar_t__,scalar_t__) ;

__attribute__((used)) static struct z_candidate*
add_template_candidate_real (struct z_candidate **candidates, tree tmpl,
        tree ctype, tree explicit_targs, tree arglist,
        tree return_type, tree access_path,
        tree conversion_path, int flags, tree obj,
        unification_kind_t strict)
{
  int ntparms = DECL_NTPARMS (tmpl);
  tree targs = make_tree_vec (ntparms);
  tree args_without_in_chrg = arglist;
  struct z_candidate *cand;
  int i;
  tree fn;



  if (DECL_NONSTATIC_MEMBER_FUNCTION_P (tmpl))
    args_without_in_chrg = TREE_CHAIN (args_without_in_chrg);

  if ((DECL_MAYBE_IN_CHARGE_CONSTRUCTOR_P (tmpl)
       || DECL_BASE_CONSTRUCTOR_P (tmpl))
      && CLASSTYPE_VBASECLASSES (DECL_CONTEXT (tmpl)))
    args_without_in_chrg = TREE_CHAIN (args_without_in_chrg);

  i = fn_type_unification (tmpl, explicit_targs, targs,
      args_without_in_chrg,
      return_type, strict, flags);

  if (i != 0)
    return ((void*)0);

  fn = instantiate_template (tmpl, targs, tf_none);
  if (fn == error_mark_node)
    return ((void*)0);
  if (DECL_CONSTRUCTOR_P (fn) && list_length (arglist) == 2)
    {
      tree arg_types = FUNCTION_FIRST_USER_PARMTYPE (fn);
      if (arg_types && same_type_p (TYPE_MAIN_VARIANT (TREE_VALUE (arg_types)),
        ctype))
 return ((void*)0);
    }

  if (obj != NULL_TREE)

    cand = add_conv_candidate (candidates, fn, obj, access_path,
          conversion_path, arglist);
  else
    cand = add_function_candidate (candidates, fn, ctype,
       arglist, access_path,
       conversion_path, flags);
  if (DECL_TI_TEMPLATE (fn) != tmpl)
    cand->template_decl = tree_cons (tmpl, targs, NULL_TREE);
  else
    cand->template_decl = DECL_TEMPLATE_INFO (fn);

  return cand;
}
