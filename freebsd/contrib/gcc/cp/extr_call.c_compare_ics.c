
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef scalar_t__ tree ;
typedef scalar_t__ conversion_rank ;
struct TYPE_12__ {TYPE_3__* next; } ;
struct TYPE_13__ {scalar_t__ user_conv_p; scalar_t__ rank; scalar_t__ kind; scalar_t__ type; TYPE_2__ u; TYPE_1__* cand; scalar_t__ ellipsis_p; } ;
typedef TYPE_3__ conversion ;
struct TYPE_11__ {scalar_t__ fn; } ;


 scalar_t__ CLASS_TYPE_P (scalar_t__) ;
 scalar_t__ CONVERSION_RANK (TYPE_3__*) ;
 scalar_t__ IS_AGGR_TYPE_CODE (scalar_t__) ;
 scalar_t__ NULL_TREE ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 scalar_t__ TREE_TYPE (scalar_t__) ;
 scalar_t__ TYPE_PTRMEMFUNC_P (scalar_t__) ;
 scalar_t__ TYPE_PTRMEM_CLASS_TYPE (scalar_t__) ;
 scalar_t__ TYPE_PTRMEM_P (scalar_t__) ;
 scalar_t__ TYPE_PTR_P (scalar_t__) ;
 scalar_t__ VOID_TYPE ;
 scalar_t__ ck_ambig ;
 scalar_t__ ck_identity ;
 scalar_t__ ck_qual ;
 scalar_t__ ck_user ;
 int comp_cv_qual_signature (scalar_t__,scalar_t__) ;
 int comp_cv_qualification (scalar_t__,scalar_t__) ;
 scalar_t__ cr_bad ;
 scalar_t__ is_properly_derived_from (scalar_t__,scalar_t__) ;
 scalar_t__ is_subseq (TYPE_3__*,TYPE_3__*) ;
 int maybe_handle_implicit_object (TYPE_3__**) ;
 scalar_t__ maybe_handle_ref_bind (TYPE_3__**) ;
 scalar_t__ non_reference (scalar_t__) ;
 scalar_t__ same_type_ignoring_top_level_qualifiers_p (scalar_t__,scalar_t__) ;
 scalar_t__ same_type_p (scalar_t__,scalar_t__) ;

__attribute__((used)) static int
compare_ics (conversion *ics1, conversion *ics2)
{
  tree from_type1;
  tree from_type2;
  tree to_type1;
  tree to_type2;
  tree deref_from_type1 = NULL_TREE;
  tree deref_from_type2 = NULL_TREE;
  tree deref_to_type1 = NULL_TREE;
  tree deref_to_type2 = NULL_TREE;
  conversion_rank rank1, rank2;




  tree target_type1;
  tree target_type2;


  maybe_handle_implicit_object (&ics1);
  maybe_handle_implicit_object (&ics2);


  target_type1 = maybe_handle_ref_bind (&ics1);
  target_type2 = maybe_handle_ref_bind (&ics2);
  rank1 = CONVERSION_RANK (ics1);
  rank2 = CONVERSION_RANK (ics2);

  if (rank1 > rank2)
    return -1;
  else if (rank1 < rank2)
    return 1;

  if (rank1 == cr_bad)
    {



      if (ics1->user_conv_p > ics2->user_conv_p
   || ics1->rank > ics2->rank)
 return -1;
      else if (ics1->user_conv_p < ics2->user_conv_p
        || ics1->rank < ics2->rank)
 return 1;


    }

  if (ics1->ellipsis_p)

    return 0;







  if (ics1->user_conv_p)
    {
      conversion *t1;
      conversion *t2;

      for (t1 = ics1; t1->kind != ck_user; t1 = t1->u.next)
 if (t1->kind == ck_ambig)
   return 0;
      for (t2 = ics2; t2->kind != ck_user; t2 = t2->u.next)
 if (t2->kind == ck_ambig)
   return 0;

      if (t1->cand->fn != t2->cand->fn)
 return 0;



      from_type1 = t1->type;
      from_type2 = t2->type;
    }
  else
    {
      conversion *t1;
      conversion *t2;
      t1 = ics1;
      while (t1->kind != ck_identity)
 t1 = t1->u.next;
      from_type1 = t1->type;

      t2 = ics2;
      while (t2->kind != ck_identity)
 t2 = t2->u.next;
      from_type2 = t2->type;
    }

  if (same_type_p (from_type1, from_type2))
    {
      if (is_subseq (ics1, ics2))
 return 1;
      if (is_subseq (ics2, ics1))
 return -1;
    }
  if (ics1->rank < ics2->rank)
    return 1;
  else if (ics2->rank < ics1->rank)
    return -1;

  to_type1 = ics1->type;
  to_type2 = ics2->type;

  if (TYPE_PTR_P (from_type1)
      && TYPE_PTR_P (from_type2)
      && TYPE_PTR_P (to_type1)
      && TYPE_PTR_P (to_type2))
    {
      deref_from_type1 = TREE_TYPE (from_type1);
      deref_from_type2 = TREE_TYPE (from_type2);
      deref_to_type1 = TREE_TYPE (to_type1);
      deref_to_type2 = TREE_TYPE (to_type2);
    }




  else if ((TYPE_PTRMEM_P (from_type1) && TYPE_PTRMEM_P (from_type2)
     && TYPE_PTRMEM_P (to_type1) && TYPE_PTRMEM_P (to_type2))
    || (TYPE_PTRMEMFUNC_P (from_type1)
        && TYPE_PTRMEMFUNC_P (from_type2)
        && TYPE_PTRMEMFUNC_P (to_type1)
        && TYPE_PTRMEMFUNC_P (to_type2)))
    {
      deref_to_type1 = TYPE_PTRMEM_CLASS_TYPE (from_type1);
      deref_to_type2 = TYPE_PTRMEM_CLASS_TYPE (from_type2);
      deref_from_type1 = TYPE_PTRMEM_CLASS_TYPE (to_type1);
      deref_from_type2 = TYPE_PTRMEM_CLASS_TYPE (to_type2);
    }

  if (deref_from_type1 != NULL_TREE
      && IS_AGGR_TYPE_CODE (TREE_CODE (deref_from_type1))
      && IS_AGGR_TYPE_CODE (TREE_CODE (deref_from_type2)))
    {
      if (TREE_CODE (deref_to_type1) == VOID_TYPE
   && TREE_CODE (deref_to_type2) == VOID_TYPE)
 {
   if (is_properly_derived_from (deref_from_type1,
     deref_from_type2))
     return -1;
   else if (is_properly_derived_from (deref_from_type2,
          deref_from_type1))
     return 1;
 }
      else if (TREE_CODE (deref_to_type1) == VOID_TYPE
        || TREE_CODE (deref_to_type2) == VOID_TYPE)
 {
   if (same_type_p (deref_from_type1, deref_from_type2))
     {
       if (TREE_CODE (deref_to_type2) == VOID_TYPE)
  {
    if (is_properly_derived_from (deref_from_type1,
      deref_to_type1))
      return 1;
  }

       else if (is_properly_derived_from (deref_from_type1,
       deref_to_type2))
  return -1;
     }
 }
      else if (IS_AGGR_TYPE_CODE (TREE_CODE (deref_to_type1))
        && IS_AGGR_TYPE_CODE (TREE_CODE (deref_to_type2)))
 {
   if (same_type_p (deref_from_type1, deref_from_type2))
     {
       if (is_properly_derived_from (deref_to_type1,
         deref_to_type2))
  return 1;
       else if (is_properly_derived_from (deref_to_type2,
       deref_to_type1))
  return -1;
     }
   else if (same_type_p (deref_to_type1, deref_to_type2))
     {
       if (is_properly_derived_from (deref_from_type2,
         deref_from_type1))
  return 1;
       else if (is_properly_derived_from (deref_from_type1,
       deref_from_type2))
  return -1;
     }
 }
    }
  else if (CLASS_TYPE_P (non_reference (from_type1))
    && same_type_p (from_type1, from_type2))
    {
      tree from = non_reference (from_type1);
      if (is_properly_derived_from (from, to_type1)
   && is_properly_derived_from (from, to_type2))
 {
   if (is_properly_derived_from (to_type1, to_type2))
     return 1;
   else if (is_properly_derived_from (to_type2, to_type1))
     return -1;
 }
    }
  else if (CLASS_TYPE_P (non_reference (to_type1))
    && same_type_p (to_type1, to_type2))
    {
      tree to = non_reference (to_type1);
      if (is_properly_derived_from (from_type1, to)
   && is_properly_derived_from (from_type2, to))
 {
   if (is_properly_derived_from (from_type2, from_type1))
     return 1;
   else if (is_properly_derived_from (from_type1, from_type2))
     return -1;
 }
    }







  if (ics1->kind == ck_qual
      && ics2->kind == ck_qual
      && same_type_p (from_type1, from_type2))
    return comp_cv_qual_signature (to_type1, to_type2);
  if (target_type1 && target_type2
      && same_type_ignoring_top_level_qualifiers_p (to_type1, to_type2))
    return comp_cv_qualification (target_type2, target_type1);


  return 0;
}
