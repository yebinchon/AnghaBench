
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef scalar_t__ tree ;
struct z_candidate {int viable; TYPE_2__* second_conv; scalar_t__ fn; scalar_t__ args; TYPE_1__** convs; struct z_candidate* next; } ;
struct TYPE_13__ {int bad_p; struct z_candidate* cand; } ;
typedef TYPE_2__ conversion ;
struct TYPE_12__ {int bad_p; } ;


 int DEDUCE_CONV ;
 int LOOKUP_NORMAL ;
 scalar_t__ NULL_TREE ;
 scalar_t__ OVL_CURRENT (scalar_t__) ;
 scalar_t__ OVL_NEXT (scalar_t__) ;
 scalar_t__ REFERENCE_TYPE ;
 scalar_t__ TEMPLATE_DECL ;
 scalar_t__ TREE_CHAIN (scalar_t__) ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 int TREE_PURPOSE (scalar_t__) ;
 scalar_t__ TREE_TYPE (scalar_t__) ;
 scalar_t__ TREE_VALUE (scalar_t__) ;
 int TYPE_BINFO (scalar_t__) ;
 struct z_candidate* add_function_candidate (struct z_candidate**,scalar_t__,scalar_t__,scalar_t__,int ,int ,int ) ;
 struct z_candidate* add_template_candidate (struct z_candidate**,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int ,int ,int ,int ) ;
 TYPE_2__* build_conv (int ,scalar_t__,TYPE_2__*) ;
 TYPE_2__* build_identity_conv (scalar_t__,scalar_t__) ;
 scalar_t__ build_int_cst (int ,int ) ;
 int build_pointer_type (scalar_t__) ;
 scalar_t__ build_reference_type (scalar_t__) ;
 int build_this (scalar_t__) ;
 scalar_t__ build_tree_list (scalar_t__,scalar_t__) ;
 int ck_user ;
 TYPE_2__* direct_reference_binding (scalar_t__,TYPE_2__*) ;
 scalar_t__ lookup_conversions (scalar_t__) ;
 TYPE_2__* merge_conversion_sequences (TYPE_2__*,TYPE_2__*) ;
 int pedantic ;
 scalar_t__ reference_compatible_p (scalar_t__,scalar_t__) ;
 struct z_candidate* splice_viable (struct z_candidate*,int ,int*) ;
 struct z_candidate* tourney (struct z_candidate*) ;
 scalar_t__ tree_cons (scalar_t__,int ,scalar_t__) ;

__attribute__((used)) static conversion *
convert_class_to_reference (tree t, tree s, tree expr)
{
  tree conversions;
  tree arglist;
  conversion *conv;
  tree reference_type;
  struct z_candidate *candidates;
  struct z_candidate *cand;
  bool any_viable_p;

  conversions = lookup_conversions (s);
  if (!conversions)
    return ((void*)0);
  candidates = 0;






  arglist = build_int_cst (build_pointer_type (s), 0);
  arglist = build_tree_list (NULL_TREE, arglist);

  reference_type = build_reference_type (t);

  while (conversions)
    {
      tree fns = TREE_VALUE (conversions);

      for (; fns; fns = OVL_NEXT (fns))
 {
   tree f = OVL_CURRENT (fns);
   tree t2 = TREE_TYPE (TREE_TYPE (f));

   cand = ((void*)0);



   if (TREE_CODE (f) == TEMPLATE_DECL)
     {
       cand = add_template_candidate (&candidates,
          f, s,
          NULL_TREE,
          arglist,
          reference_type,
          TYPE_BINFO (s),
          TREE_PURPOSE (conversions),
          LOOKUP_NORMAL,
          DEDUCE_CONV);

       if (cand)
  {




    f = cand->fn;
    t2 = TREE_TYPE (TREE_TYPE (f));
    if (TREE_CODE (t2) != REFERENCE_TYPE
        || !reference_compatible_p (t, TREE_TYPE (t2)))
      {
        candidates = candidates->next;
        cand = ((void*)0);
      }
  }
     }
   else if (TREE_CODE (t2) == REFERENCE_TYPE
     && reference_compatible_p (t, TREE_TYPE (t2)))
     cand = add_function_candidate (&candidates, f, s, arglist,
        TYPE_BINFO (s),
        TREE_PURPOSE (conversions),
        LOOKUP_NORMAL);

   if (cand)
     {
       conversion *identity_conv;



       identity_conv
  = build_identity_conv (TREE_TYPE (TREE_TYPE
        (TREE_TYPE (cand->fn))),
           NULL_TREE);
       cand->second_conv
  = (direct_reference_binding
     (reference_type, identity_conv));
       cand->second_conv->bad_p |= cand->convs[0]->bad_p;
     }
 }
      conversions = TREE_CHAIN (conversions);
    }

  candidates = splice_viable (candidates, pedantic, &any_viable_p);


  if (!any_viable_p)
    return ((void*)0);

  cand = tourney (candidates);
  if (!cand)
    return ((void*)0);



  cand->args = tree_cons (NULL_TREE,
     build_this (expr),
     TREE_CHAIN (cand->args));



  conv = build_conv (ck_user,
       TREE_TYPE (TREE_TYPE (cand->fn)),
       build_identity_conv (TREE_TYPE (expr), expr));
  conv->cand = cand;



  cand->second_conv = merge_conversion_sequences (conv, cand->second_conv);

  if (cand->viable == -1)
    conv->bad_p = 1;

  return cand->second_conv;
}
