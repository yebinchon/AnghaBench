
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
 scalar_t__ VR_UNDEFINED ;
 scalar_t__ VR_VARYING ;
 int boolean_false_node ;
 int boolean_true_node ;
 int compare_values_warnv (int ,int ,int*) ;
 int gcc_unreachable () ;
 scalar_t__ overflow_infinity_range_p (TYPE_1__*) ;
 int usable_range_p (TYPE_1__*,int*) ;
 int value_inside_range (int ,TYPE_1__*) ;

__attribute__((used)) static tree
compare_range_with_value (enum tree_code comp, value_range_t *vr, tree val,
     bool *strict_overflow_p)
{
  if (vr->type == VR_VARYING || vr->type == VR_UNDEFINED)
    return NULL_TREE;


  if (vr->type == VR_ANTI_RANGE)
    {


      if (comp == GT_EXPR
   || comp == GE_EXPR
   || comp == LT_EXPR
   || comp == LE_EXPR)
 return NULL_TREE;


      if (value_inside_range (val, vr) == 1)
 return (comp == NE_EXPR) ? boolean_true_node : boolean_false_node;

      return NULL_TREE;
    }

  if (!usable_range_p (vr, strict_overflow_p))
    return NULL_TREE;

  if (comp == EQ_EXPR)
    {


      if (compare_values_warnv (vr->min, vr->max, strict_overflow_p) == 0)
 {
   int cmp = compare_values_warnv (vr->min, val, strict_overflow_p);
   if (cmp == 0)
     return boolean_true_node;
   else if (cmp == -1 || cmp == 1 || cmp == 2)
     return boolean_false_node;
 }
      else if (compare_values_warnv (val, vr->min, strict_overflow_p) == -1
        || compare_values_warnv (vr->max, val, strict_overflow_p) == -1)
 return boolean_false_node;

      return NULL_TREE;
    }
  else if (comp == NE_EXPR)
    {

      if (compare_values_warnv (vr->max, val, strict_overflow_p) == -1
   || compare_values_warnv (vr->min, val, strict_overflow_p) == 1)
 return boolean_true_node;



      if (compare_values_warnv (vr->min, vr->max, strict_overflow_p) == 0
   && compare_values_warnv (vr->min, val, strict_overflow_p) == 0)
 return boolean_false_node;


      return NULL_TREE;
    }
  else if (comp == LT_EXPR || comp == LE_EXPR)
    {
      int tst;


      tst = compare_values_warnv (vr->max, val, strict_overflow_p);
      if ((comp == LT_EXPR && tst == -1)
   || (comp == LE_EXPR && (tst == -1 || tst == 0)))
 {
   if (overflow_infinity_range_p (vr))
     *strict_overflow_p = 1;
   return boolean_true_node;
 }


      tst = compare_values_warnv (vr->min, val, strict_overflow_p);
      if ((comp == LT_EXPR && (tst == 0 || tst == 1))
   || (comp == LE_EXPR && tst == 1))
 {
   if (overflow_infinity_range_p (vr))
     *strict_overflow_p = 1;
   return boolean_false_node;
 }


      return NULL_TREE;
    }
  else if (comp == GT_EXPR || comp == GE_EXPR)
    {
      int tst;


      tst = compare_values_warnv (vr->min, val, strict_overflow_p);
      if ((comp == GT_EXPR && tst == 1)
   || (comp == GE_EXPR && (tst == 0 || tst == 1)))
 {
   if (overflow_infinity_range_p (vr))
     *strict_overflow_p = 1;
   return boolean_true_node;
 }


      tst = compare_values_warnv (vr->max, val, strict_overflow_p);
      if ((comp == GT_EXPR && (tst == -1 || tst == 0))
   || (comp == GE_EXPR && tst == -1))
 {
   if (overflow_infinity_range_p (vr))
     *strict_overflow_p = 1;
   return boolean_false_node;
 }


      return NULL_TREE;
    }

  gcc_unreachable ();
}
