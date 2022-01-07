
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 int BINFO_SUBVTT_INDEX (scalar_t__) ;
 scalar_t__ BINFO_TYPE (scalar_t__) ;
 scalar_t__ CLASSTYPE_VBASECLASSES (scalar_t__) ;
 int CLASSTYPE_VTABLES (int ) ;
 int COND_EXPR ;
 int EQ_EXPR ;
 int INDIRECT_REF ;
 int NOP_EXPR ;
 scalar_t__ NULL_TREE ;
 int PLUS_EXPR ;
 scalar_t__ TREE_CHAIN (int ) ;
 int TREE_TYPE (scalar_t__) ;
 scalar_t__ TYPE_BINFO (scalar_t__) ;
 scalar_t__ TYPE_P (scalar_t__) ;
 scalar_t__ ansi_assopname (int ) ;
 scalar_t__ base_ctor_identifier ;
 scalar_t__ base_dtor_identifier ;
 int boolean_type_node ;
 scalar_t__ build1 (int ,scalar_t__,scalar_t__) ;
 scalar_t__ build2 (int ,int ,scalar_t__,int) ;
 scalar_t__ build3 (int ,int ,scalar_t__,int ,scalar_t__) ;
 scalar_t__ build_base_path (int ,scalar_t__,scalar_t__,int) ;
 scalar_t__ build_int_cst (int ,int ) ;
 scalar_t__ build_new_method_call (scalar_t__,scalar_t__,scalar_t__,scalar_t__,int,int *) ;
 int build_pointer_type (scalar_t__) ;
 scalar_t__ complete_ctor_identifier ;
 scalar_t__ complete_dtor_identifier ;
 int complete_type_or_else (scalar_t__,scalar_t__) ;
 scalar_t__ convert_to_base_statically (scalar_t__,scalar_t__) ;
 int current_class_type ;
 scalar_t__ current_in_charge_parm ;
 int current_vtt_parm ;
 scalar_t__ decay_conversion (scalar_t__) ;
 scalar_t__ deleting_dtor_identifier ;
 scalar_t__ error_mark_node ;
 int gcc_assert (int) ;
 int integer_zero_node ;
 scalar_t__ lookup_fnfields (scalar_t__,scalar_t__,int) ;
 int same_type_ignoring_top_level_qualifiers_p (int ,scalar_t__) ;
 scalar_t__ tree_cons (scalar_t__,scalar_t__,scalar_t__) ;

tree
build_special_member_call (tree instance, tree name, tree args,
      tree binfo, int flags)
{
  tree fns;

  tree class_type;

  gcc_assert (name == complete_ctor_identifier
       || name == base_ctor_identifier
       || name == complete_dtor_identifier
       || name == base_dtor_identifier
       || name == deleting_dtor_identifier
       || name == ansi_assopname (NOP_EXPR));
  if (TYPE_P (binfo))
    {

      if (!complete_type_or_else (binfo, NULL_TREE))
 return error_mark_node;

      binfo = TYPE_BINFO (binfo);
    }

  gcc_assert (binfo != NULL_TREE);

  class_type = BINFO_TYPE (binfo);


  if (name == complete_ctor_identifier && !instance)
    {
      instance = build_int_cst (build_pointer_type (class_type), 0);
      instance = build1 (INDIRECT_REF, class_type, instance);
    }
  else
    {
      if (name == complete_dtor_identifier
   || name == base_dtor_identifier
   || name == deleting_dtor_identifier)
 gcc_assert (args == NULL_TREE);


      if (!same_type_ignoring_top_level_qualifiers_p
   (TREE_TYPE (instance), BINFO_TYPE (binfo)))
 {
   if (name != ansi_assopname (NOP_EXPR))





     instance = convert_to_base_statically (instance, binfo);
   else


     instance = build_base_path (PLUS_EXPR, instance,
     binfo, 1);
 }
    }

  gcc_assert (instance != NULL_TREE);

  fns = lookup_fnfields (binfo, name, 1);




  if ((name == base_ctor_identifier
       || name == base_dtor_identifier)
      && CLASSTYPE_VBASECLASSES (class_type))
    {
      tree vtt;
      tree sub_vtt;




      vtt = TREE_CHAIN (CLASSTYPE_VTABLES (current_class_type));
      vtt = decay_conversion (vtt);
      vtt = build3 (COND_EXPR, TREE_TYPE (vtt),
      build2 (EQ_EXPR, boolean_type_node,
       current_in_charge_parm, integer_zero_node),
      current_vtt_parm,
      vtt);
      gcc_assert (BINFO_SUBVTT_INDEX (binfo));
      sub_vtt = build2 (PLUS_EXPR, TREE_TYPE (vtt), vtt,
   BINFO_SUBVTT_INDEX (binfo));

      args = tree_cons (NULL_TREE, sub_vtt, args);
    }

  return build_new_method_call (instance, fns, args,
    TYPE_BINFO (BINFO_TYPE (binfo)),
    flags, ((void*)0));
}
