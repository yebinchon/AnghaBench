
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ tree ;
struct z_candidate {scalar_t__ viable; scalar_t__ fn; size_t num_convs; TYPE_3__** convs; TYPE_3__* second_conv; scalar_t__ template_decl; } ;
typedef scalar_t__ conversion_rank ;
struct TYPE_9__ {TYPE_1__* next; } ;
struct TYPE_10__ {scalar_t__ kind; scalar_t__ type; TYPE_2__ u; } ;
typedef TYPE_3__ conversion ;
struct TYPE_8__ {scalar_t__ type; } ;


 scalar_t__ CONVERSION_RANK (TYPE_3__*) ;
 scalar_t__ DECL_CONSTRUCTOR_P (scalar_t__) ;
 scalar_t__ DECL_CONTEXT (scalar_t__) ;
 scalar_t__ DECL_P (scalar_t__) ;
 int DECL_STATIC_FUNCTION_P (scalar_t__) ;
 scalar_t__ ENUMERAL_TYPE ;
 scalar_t__ IDENTIFIER_NODE ;
 scalar_t__ INTEGER_TYPE ;
 scalar_t__ IS_TYPE_OR_DECL_P (scalar_t__) ;
 int OPT_Wconversion ;
 int OPT_Wsign_promo ;
 scalar_t__ POINTER_TYPE_P (scalar_t__) ;
 int TI_TEMPLATE (scalar_t__) ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 scalar_t__ TREE_TYPE (scalar_t__) ;
 scalar_t__ TYPE_PRECISION (scalar_t__) ;
 scalar_t__ TYPE_UNSIGNED (scalar_t__) ;
 int _ (char*) ;
 int add_warning (struct z_candidate*,struct z_candidate*) ;
 scalar_t__ ck_std ;
 int comp_ptr_ttypes (scalar_t__,scalar_t__) ;
 int compare_ics (TYPE_3__*,TYPE_3__*) ;
 scalar_t__ cr_identity ;
 scalar_t__ cr_promotion ;
 scalar_t__ cr_std ;
 scalar_t__ equal_functions (scalar_t__,scalar_t__) ;
 int gcc_assert (int) ;
 int inform (char*) ;
 int more_specialized_fn (int ,int ,scalar_t__) ;
 int pedantic ;
 int pedwarn (char*) ;
 int print_z_candidate (int ,struct z_candidate*) ;
 int same_type_p (scalar_t__,scalar_t__) ;
 scalar_t__ source_type (TYPE_3__*) ;
 scalar_t__ warn_conversion ;
 scalar_t__ warn_sign_promo ;
 int warning (int ,char*,scalar_t__,...) ;

__attribute__((used)) static int
joust (struct z_candidate *cand1, struct z_candidate *cand2, bool warn)
{
  int winner = 0;
  int off1 = 0, off2 = 0;
  size_t i;
  size_t len;



  if (cand1->viable > cand2->viable)
    return 1;
  if (cand1->viable < cand2->viable)
    return -1;



  if (cand1->fn == cand2->fn
      && (IS_TYPE_OR_DECL_P (cand1->fn)))
    return 1;
  len = cand1->num_convs;
  if (len != cand2->num_convs)
    {
      int static_1 = DECL_STATIC_FUNCTION_P (cand1->fn);
      int static_2 = DECL_STATIC_FUNCTION_P (cand2->fn);

      gcc_assert (static_1 != static_2);

      if (static_1)
 off2 = 1;
      else
 {
   off1 = 1;
   --len;
 }
    }

  for (i = 0; i < len; ++i)
    {
      conversion *t1 = cand1->convs[i + off1];
      conversion *t2 = cand2->convs[i + off2];
      int comp = compare_ics (t1, t2);

      if (comp != 0)
 {
   if (warn_sign_promo
       && (CONVERSION_RANK (t1) + CONVERSION_RANK (t2)
    == cr_std + cr_promotion)
       && t1->kind == ck_std
       && t2->kind == ck_std
       && TREE_CODE (t1->type) == INTEGER_TYPE
       && TREE_CODE (t2->type) == INTEGER_TYPE
       && (TYPE_PRECISION (t1->type)
    == TYPE_PRECISION (t2->type))
       && (TYPE_UNSIGNED (t1->u.next->type)
    || (TREE_CODE (t1->u.next->type)
        == ENUMERAL_TYPE)))
     {
       tree type = t1->u.next->type;
       tree type1, type2;
       struct z_candidate *w, *l;
       if (comp > 0)
  type1 = t1->type, type2 = t2->type,
    w = cand1, l = cand2;
       else
  type1 = t2->type, type2 = t1->type,
    w = cand2, l = cand1;

       if (warn)
  {
    warning (OPT_Wsign_promo, "passing %qT chooses %qT over %qT",
      type, type1, type2);
    warning (OPT_Wsign_promo, "  in call to %qD", w->fn);
  }
       else
  add_warning (w, l);
     }

   if (winner && comp != winner)
     {
       winner = 0;
       goto tweak;
     }
   winner = comp;
 }
    }




  if (winner && warn_conversion && cand1->second_conv
      && (!DECL_CONSTRUCTOR_P (cand1->fn) || !DECL_CONSTRUCTOR_P (cand2->fn))
      && winner != compare_ics (cand1->second_conv, cand2->second_conv))
    {
      struct z_candidate *w, *l;
      bool give_warning = 0;

      if (winner == 1)
 w = cand1, l = cand2;
      else
 w = cand2, l = cand1;




      if (DECL_CONTEXT (w->fn) == DECL_CONTEXT (l->fn)
   && !DECL_CONSTRUCTOR_P (w->fn) && !DECL_CONSTRUCTOR_P (l->fn))
 {
   tree t = TREE_TYPE (TREE_TYPE (l->fn));
   tree f = TREE_TYPE (TREE_TYPE (w->fn));

   if (TREE_CODE (t) == TREE_CODE (f) && POINTER_TYPE_P (t))
     {
       t = TREE_TYPE (t);
       f = TREE_TYPE (f);
     }
   if (!comp_ptr_ttypes (t, f))
     give_warning = 1;
 }
      else
 give_warning = 1;

      if (!give_warning)
        ;
      else if (warn)
 {
   tree source = source_type (w->convs[0]);
   if (! DECL_CONSTRUCTOR_P (w->fn))
     source = TREE_TYPE (source);
   warning (OPT_Wconversion, "choosing %qD over %qD", w->fn, l->fn);
   warning (OPT_Wconversion, "  for conversion from %qT to %qT",
     source, w->second_conv->type);
   inform ("  because conversion sequence for the argument is better");
 }
      else
 add_warning (w, l);
    }

  if (winner)
    return winner;





  if (!cand1->template_decl && cand2->template_decl)
    return 1;
  else if (cand1->template_decl && !cand2->template_decl)
    return -1;






  if (cand1->template_decl && cand2->template_decl)
    {
      winner = more_specialized_fn
 (TI_TEMPLATE (cand1->template_decl),
  TI_TEMPLATE (cand2->template_decl),




  cand1->num_convs + DECL_CONSTRUCTOR_P (cand1->fn));
      if (winner)
 return winner;
    }
  if (cand1->second_conv)
    {
      winner = compare_ics (cand1->second_conv, cand2->second_conv);
      if (winner)
 return winner;
    }
  if (TREE_CODE (cand1->fn) == IDENTIFIER_NODE
      || TREE_CODE (cand2->fn) == IDENTIFIER_NODE)
    {
      for (i = 0; i < len; ++i)
 if (!same_type_p (cand1->convs[i]->type,
     cand2->convs[i]->type))
   break;
      if (i == cand1->num_convs)
 {
   if (cand1->fn == cand2->fn)

     return 1;
   else if (TREE_CODE (cand1->fn) == IDENTIFIER_NODE)

     return -1;
   else

     return 1;
 }
    }



  if (DECL_P (cand1->fn) && DECL_P (cand2->fn)
      && equal_functions (cand1->fn, cand2->fn))
    return 1;

tweak:



  if (!pedantic)
    {
      conversion_rank rank1 = cr_identity, rank2 = cr_identity;
      struct z_candidate *w = 0, *l = 0;

      for (i = 0; i < len; ++i)
 {
   if (CONVERSION_RANK (cand1->convs[i+off1]) > rank1)
     rank1 = CONVERSION_RANK (cand1->convs[i+off1]);
   if (CONVERSION_RANK (cand2->convs[i + off2]) > rank2)
     rank2 = CONVERSION_RANK (cand2->convs[i + off2]);
 }
      if (rank1 < rank2)
 winner = 1, w = cand1, l = cand2;
      if (rank1 > rank2)
 winner = -1, w = cand2, l = cand1;
      if (winner)
 {
   if (warn)
     {
       pedwarn ("ISO C++ says that these are ambiguous, even though the worst conversion for the first is better than the worst conversion for the second:");



       print_z_candidate (_("candidate 1:"), w);
       print_z_candidate (_("candidate 2:"), l);
     }
   else
     add_warning (w, l);
   return winner;
 }
    }

  gcc_assert (!winner);
  return 0;
}
