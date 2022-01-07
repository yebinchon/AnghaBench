
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ type; int max; int min; } ;
typedef TYPE_1__ value_range_t ;
typedef int tree ;
typedef enum tree_code { ____Placeholder_tree_code } tree_code ;


 int EQ_EXPR ;
 int GE_EXPR ;
 int GT_EXPR ;
 int LE_EXPR ;
 int LT_EXPR ;
 int NE_EXPR ;
 int NULL_TREE ;
 scalar_t__ VR_ANTI_RANGE ;
 scalar_t__ VR_RANGE ;
 scalar_t__ VR_UNDEFINED ;
 scalar_t__ VR_VARYING ;
 int boolean_false_node ;
 int boolean_true_node ;
 int compare_values_warnv (int ,int ,int*) ;
 int gcc_assert (int) ;
 int gcc_unreachable () ;
 scalar_t__ overflow_infinity_range_p (TYPE_1__*) ;
 int usable_range_p (TYPE_1__*,int*) ;

__attribute__((used)) static tree
compare_ranges (enum tree_code comp, value_range_t *vr0, value_range_t *vr1,
  bool *strict_overflow_p)
{

  if (vr0->type == VR_VARYING
      || vr0->type == VR_UNDEFINED
      || vr1->type == VR_VARYING
      || vr1->type == VR_UNDEFINED)
    return NULL_TREE;


  if (vr0->type == VR_ANTI_RANGE || vr1->type == VR_ANTI_RANGE)
    {


      if (vr0->type == VR_ANTI_RANGE && vr1->type == VR_ANTI_RANGE)
 return NULL_TREE;


      if (comp == GT_EXPR
   || comp == GE_EXPR
   || comp == LT_EXPR
   || comp == LE_EXPR)
 return NULL_TREE;



      if (vr0->type == VR_RANGE)
 {

   value_range_t *tmp = vr0;
   vr0 = vr1;
   vr1 = tmp;
 }

      gcc_assert (comp == NE_EXPR || comp == EQ_EXPR);

      if (compare_values_warnv (vr0->min, vr1->min, strict_overflow_p) == 0
   && compare_values_warnv (vr0->max, vr1->max, strict_overflow_p) == 0)
 return (comp == NE_EXPR) ? boolean_true_node : boolean_false_node;

      return NULL_TREE;
    }

  if (!usable_range_p (vr0, strict_overflow_p)
      || !usable_range_p (vr1, strict_overflow_p))
    return NULL_TREE;



  if (comp == GT_EXPR || comp == GE_EXPR)
    {
      value_range_t *tmp;
      comp = (comp == GT_EXPR) ? LT_EXPR : LE_EXPR;
      tmp = vr0;
      vr0 = vr1;
      vr1 = tmp;
    }

  if (comp == EQ_EXPR)
    {


      if (compare_values_warnv (vr0->min, vr0->max, strict_overflow_p) == 0
   && compare_values_warnv (vr1->min, vr1->max, strict_overflow_p) == 0)
 {
   int cmp_min = compare_values_warnv (vr0->min, vr1->min,
           strict_overflow_p);
   int cmp_max = compare_values_warnv (vr0->max, vr1->max,
           strict_overflow_p);
   if (cmp_min == 0 && cmp_max == 0)
     return boolean_true_node;
   else if (cmp_min != -2 && cmp_max != -2)
     return boolean_false_node;
 }

      else if (compare_values_warnv (vr0->min, vr1->max,
         strict_overflow_p) == 1
        || compare_values_warnv (vr1->min, vr0->max,
     strict_overflow_p) == 1)
 return boolean_false_node;

      return NULL_TREE;
    }
  else if (comp == NE_EXPR)
    {
      int cmp1, cmp2;






      cmp1 = compare_values_warnv (vr0->max, vr1->min, strict_overflow_p);
      cmp2 = compare_values_warnv (vr0->min, vr1->max, strict_overflow_p);
      if ((cmp1 == -1 && cmp2 == -1) || (cmp1 == 1 && cmp2 == 1))
 return boolean_true_node;



      else if (compare_values_warnv (vr0->min, vr0->max,
         strict_overflow_p) == 0
        && compare_values_warnv (vr1->min, vr1->max,
     strict_overflow_p) == 0
        && compare_values_warnv (vr0->min, vr1->min,
     strict_overflow_p) == 0
        && compare_values_warnv (vr0->max, vr1->max,
     strict_overflow_p) == 0)
 return boolean_false_node;


      else
 return NULL_TREE;
    }
  else if (comp == LT_EXPR || comp == LE_EXPR)
    {
      int tst;


      tst = compare_values_warnv (vr0->max, vr1->min, strict_overflow_p);
      if ((comp == LT_EXPR && tst == -1)
   || (comp == LE_EXPR && (tst == -1 || tst == 0)))
 {
   if (overflow_infinity_range_p (vr0)
       || overflow_infinity_range_p (vr1))
     *strict_overflow_p = 1;
   return boolean_true_node;
 }


      tst = compare_values_warnv (vr0->min, vr1->max, strict_overflow_p);
      if ((comp == LT_EXPR && (tst == 0 || tst == 1))
   || (comp == LE_EXPR && tst == 1))
 {
   if (overflow_infinity_range_p (vr0)
       || overflow_infinity_range_p (vr1))
     *strict_overflow_p = 1;
   return boolean_false_node;
 }


      return NULL_TREE;
    }

  gcc_unreachable ();
}
