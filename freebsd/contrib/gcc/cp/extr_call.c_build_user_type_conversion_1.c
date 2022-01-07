
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_1__ ;


typedef char* tree ;
struct z_candidate {char* fn; int viable; TYPE_1__* second_conv; } ;
struct TYPE_10__ {int bad_p; int user_conv_p; struct z_candidate* cand; } ;
typedef TYPE_1__ conversion ;


 char* BASELINK_FUNCTIONS (char*) ;
 scalar_t__ DECL_CONSTRUCTOR_P (char*) ;
 int DECL_HAS_IN_CHARGE_PARM_P (char*) ;
 int DECL_HAS_VTT_PARM_P (char*) ;
 scalar_t__ DECL_NONCONVERTING_P (char*) ;
 int DEDUCE_CALL ;
 int DEDUCE_CONV ;
 int DERIVED_FROM_P (char*,char*) ;
 scalar_t__ IS_AGGR_TYPE (char*) ;
 int LOOKUP_COMPLAIN ;
 int LOOKUP_NO_CONVERSION ;
 int LOOKUP_NO_TEMP_BIND ;
 char* NULL_TREE ;
 char* OVL_CURRENT (char*) ;
 char* OVL_NEXT (char*) ;
 scalar_t__ REFERENCE_TYPE ;
 scalar_t__ TEMPLATE_DECL ;
 char* TREE_CHAIN (char*) ;
 scalar_t__ TREE_CODE (char*) ;
 char* TREE_PURPOSE (char*) ;
 char* TREE_TYPE (char*) ;
 char* TREE_VALUE (char*) ;
 char* TYPE_BINFO (char*) ;
 struct z_candidate* add_function_candidate (struct z_candidate**,char*,char*,char*,char*,char*,int) ;
 struct z_candidate* add_template_candidate (struct z_candidate**,char*,char*,char*,char*,char*,char*,char*,int,int ) ;
 int any_strictly_viable (struct z_candidate*) ;
 TYPE_1__* build_ambiguous_conv (char*,char*) ;
 TYPE_1__* build_conv (int ,char*,TYPE_1__*) ;
 TYPE_1__* build_identity_conv (char*,char*) ;
 char* build_int_cst (int ,int ) ;
 int build_pointer_type (char*) ;
 char* build_this (char*) ;
 char* build_tree_list (char*,char*) ;
 int ck_user ;
 int complete_ctor_identifier ;
 int error (char*,char*,char*) ;
 int gcc_assert (int) ;
 TYPE_1__* implicit_conversion (char*,char*,int ,int,int) ;
 char* lookup_conversions (char*) ;
 char* lookup_fnfields (char*,int ,int ) ;
 TYPE_1__* merge_conversion_sequences (TYPE_1__*,TYPE_1__*) ;
 char* non_reference (char*) ;
 int pedantic ;
 int print_z_candidates (struct z_candidate*) ;
 struct z_candidate* splice_viable (struct z_candidate*,int ,int*) ;
 struct z_candidate* tourney (struct z_candidate*) ;
 char* tree_cons (char*,char*,char*) ;

__attribute__((used)) static struct z_candidate *
build_user_type_conversion_1 (tree totype, tree expr, int flags)
{
  struct z_candidate *candidates, *cand;
  tree fromtype = TREE_TYPE (expr);
  tree ctors = NULL_TREE;
  tree conv_fns = NULL_TREE;
  conversion *conv = ((void*)0);
  tree args = NULL_TREE;
  bool any_viable_p;




  gcc_assert (!IS_AGGR_TYPE (fromtype) || !IS_AGGR_TYPE (totype)
       || !DERIVED_FROM_P (totype, fromtype));

  if (IS_AGGR_TYPE (totype))
    ctors = lookup_fnfields (totype, complete_ctor_identifier, 0);

  if (IS_AGGR_TYPE (fromtype))
    conv_fns = lookup_conversions (fromtype);

  candidates = 0;
  flags |= LOOKUP_NO_CONVERSION;

  if (ctors)
    {
      tree t;

      ctors = BASELINK_FUNCTIONS (ctors);

      t = build_int_cst (build_pointer_type (totype), 0);
      args = build_tree_list (NULL_TREE, expr);


      gcc_assert (!DECL_HAS_IN_CHARGE_PARM_P (OVL_CURRENT (ctors))
    && !DECL_HAS_VTT_PARM_P (OVL_CURRENT (ctors)));
      args = tree_cons (NULL_TREE, t, args);
    }
  for (; ctors; ctors = OVL_NEXT (ctors))
    {
      tree ctor = OVL_CURRENT (ctors);
      if (DECL_NONCONVERTING_P (ctor))
 continue;

      if (TREE_CODE (ctor) == TEMPLATE_DECL)
 cand = add_template_candidate (&candidates, ctor, totype,
           NULL_TREE, args, NULL_TREE,
           TYPE_BINFO (totype),
           TYPE_BINFO (totype),
           flags,
           DEDUCE_CALL);
      else
 cand = add_function_candidate (&candidates, ctor, totype,
           args, TYPE_BINFO (totype),
           TYPE_BINFO (totype),
           flags);

      if (cand)
 cand->second_conv = build_identity_conv (totype, NULL_TREE);
    }

  if (conv_fns)
    args = build_tree_list (NULL_TREE, build_this (expr));

  for (; conv_fns; conv_fns = TREE_CHAIN (conv_fns))
    {
      tree fns;
      tree conversion_path = TREE_PURPOSE (conv_fns);
      int convflags = LOOKUP_NO_CONVERSION;





      if (TREE_CODE (totype) == REFERENCE_TYPE)
 convflags |= LOOKUP_NO_TEMP_BIND;

      for (fns = TREE_VALUE (conv_fns); fns; fns = OVL_NEXT (fns))
 {
   tree fn = OVL_CURRENT (fns);
   if (TREE_CODE (fn) == TEMPLATE_DECL)
     cand = add_template_candidate (&candidates, fn, fromtype,
        NULL_TREE,
        args, totype,
        TYPE_BINFO (fromtype),
        conversion_path,
        flags,
        DEDUCE_CONV);
   else
     cand = add_function_candidate (&candidates, fn, fromtype,
        args,
        TYPE_BINFO (fromtype),
        conversion_path,
        flags);

   if (cand)
     {
       conversion *ics
  = implicit_conversion (totype,
           TREE_TYPE (TREE_TYPE (cand->fn)),
           0,
                        0, convflags);

       cand->second_conv = ics;

       if (!ics)
  cand->viable = 0;
       else if (candidates->viable == 1 && ics->bad_p)
  cand->viable = -1;
     }
 }
    }

  candidates = splice_viable (candidates, pedantic, &any_viable_p);
  if (!any_viable_p)
    return ((void*)0);

  cand = tourney (candidates);
  if (cand == 0)
    {
      if (flags & LOOKUP_COMPLAIN)
 {
   error ("conversion from %qT to %qT is ambiguous",
      fromtype, totype);
   print_z_candidates (candidates);
 }

      cand = candidates;
      cand->second_conv = build_ambiguous_conv (totype, expr);
      cand->second_conv->user_conv_p = 1;
      if (!any_strictly_viable (candidates))
 cand->second_conv->bad_p = 1;




      return cand;
    }


  conv = build_conv
    (ck_user,
     (DECL_CONSTRUCTOR_P (cand->fn)
      ? totype : non_reference (TREE_TYPE (TREE_TYPE (cand->fn)))),
     build_identity_conv (TREE_TYPE (expr), expr));
  conv->cand = cand;


  cand->second_conv = merge_conversion_sequences (conv,
        cand->second_conv);

  if (cand->viable == -1)
    cand->second_conv->bad_p = 1;

  return cand;
}
