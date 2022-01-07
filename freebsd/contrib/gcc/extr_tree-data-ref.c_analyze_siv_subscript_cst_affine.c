
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ tree ;
struct TYPE_2__ {int num_siv_independent; int num_siv_dependent; int num_siv_unimplemented; } ;


 int ABS_EXPR ;
 int CHREC_RIGHT (scalar_t__) ;
 int CHREC_VARIABLE (scalar_t__) ;
 int EXACT_DIV_EXPR ;
 scalar_t__ INTEGER_CST ;
 scalar_t__ NULL_TREE ;
 int TDF_DETAILS ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 scalar_t__ chrec_convert (int ,scalar_t__,scalar_t__) ;
 scalar_t__ chrec_dont_know ;
 scalar_t__ chrec_fold_minus (int ,int ,scalar_t__) ;
 int chrec_is_positive (int ,int*) ;
 scalar_t__ chrec_known ;
 TYPE_1__ dependence_stats ;
 scalar_t__ dump_file ;
 int dump_flags ;
 scalar_t__ fold_build1 (int ,int ,scalar_t__) ;
 scalar_t__ fold_build2 (int ,int ,scalar_t__,int ) ;
 int fprintf (scalar_t__,char*) ;
 scalar_t__ get_number_of_iters_for_loop (int) ;
 int initial_condition (scalar_t__) ;
 scalar_t__ integer_one_node ;
 int integer_type_node ;
 scalar_t__ integer_zero_node ;
 scalar_t__ tree_fold_divides_p (int ,scalar_t__) ;
 scalar_t__ tree_int_cst_lt (scalar_t__,scalar_t__) ;

__attribute__((used)) static void
analyze_siv_subscript_cst_affine (tree chrec_a,
      tree chrec_b,
      tree *overlaps_a,
      tree *overlaps_b,
      tree *last_conflicts)
{
  bool value0, value1, value2;
  tree difference;

  chrec_a = chrec_convert (integer_type_node, chrec_a, NULL_TREE);
  chrec_b = chrec_convert (integer_type_node, chrec_b, NULL_TREE);
  difference = chrec_fold_minus
    (integer_type_node, initial_condition (chrec_b), chrec_a);

  if (!chrec_is_positive (initial_condition (difference), &value0))
    {
      if (dump_file && (dump_flags & TDF_DETAILS))
 fprintf (dump_file, "siv test failed: chrec is not positive.\n");

      dependence_stats.num_siv_unimplemented++;
      *overlaps_a = chrec_dont_know;
      *overlaps_b = chrec_dont_know;
      *last_conflicts = chrec_dont_know;
      return;
    }
  else
    {
      if (value0 == 0)
 {
   if (!chrec_is_positive (CHREC_RIGHT (chrec_b), &value1))
     {
       if (dump_file && (dump_flags & TDF_DETAILS))
  fprintf (dump_file, "siv test failed: chrec not positive.\n");

       *overlaps_a = chrec_dont_know;
       *overlaps_b = chrec_dont_know;
       *last_conflicts = chrec_dont_know;
       dependence_stats.num_siv_unimplemented++;
       return;
     }
   else
     {
       if (value1 == 1)
  {





    if (tree_fold_divides_p (CHREC_RIGHT (chrec_b), difference))
      {
        tree numiter;
        int loopnum = CHREC_VARIABLE (chrec_b);

        *overlaps_a = integer_zero_node;
        *overlaps_b = fold_build2 (EXACT_DIV_EXPR, integer_type_node,
       fold_build1 (ABS_EXPR,
             integer_type_node,
             difference),
       CHREC_RIGHT (chrec_b));
        *last_conflicts = integer_one_node;




        numiter = get_number_of_iters_for_loop (loopnum);

        if (numiter != NULL_TREE
     && TREE_CODE (*overlaps_b) == INTEGER_CST
     && tree_int_cst_lt (numiter, *overlaps_b))
   {
     *overlaps_a = chrec_known;
     *overlaps_b = chrec_known;
     *last_conflicts = integer_zero_node;
     dependence_stats.num_siv_independent++;
     return;
   }
        dependence_stats.num_siv_dependent++;
        return;
      }



    else
      {
        *overlaps_a = chrec_known;
        *overlaps_b = chrec_known;
        *last_conflicts = integer_zero_node;
        dependence_stats.num_siv_independent++;
        return;
      }
  }

       else
  {





    *overlaps_a = chrec_known;
    *overlaps_b = chrec_known;
    *last_conflicts = integer_zero_node;
    dependence_stats.num_siv_independent++;
    return;
  }
     }
 }
      else
 {
   if (!chrec_is_positive (CHREC_RIGHT (chrec_b), &value2))
     {
       if (dump_file && (dump_flags & TDF_DETAILS))
  fprintf (dump_file, "siv test failed: chrec not positive.\n");

       *overlaps_a = chrec_dont_know;
       *overlaps_b = chrec_dont_know;
       *last_conflicts = chrec_dont_know;
       dependence_stats.num_siv_unimplemented++;
       return;
     }
   else
     {
       if (value2 == 0)
  {




    if (tree_fold_divides_p (CHREC_RIGHT (chrec_b), difference))
      {
        tree numiter;
        int loopnum = CHREC_VARIABLE (chrec_b);

        *overlaps_a = integer_zero_node;
        *overlaps_b = fold_build2 (EXACT_DIV_EXPR,
             integer_type_node, difference,
       CHREC_RIGHT (chrec_b));
        *last_conflicts = integer_one_node;



        numiter = get_number_of_iters_for_loop (loopnum);

        if (numiter != NULL_TREE
     && TREE_CODE (*overlaps_b) == INTEGER_CST
     && tree_int_cst_lt (numiter, *overlaps_b))
   {
     *overlaps_a = chrec_known;
     *overlaps_b = chrec_known;
     *last_conflicts = integer_zero_node;
     dependence_stats.num_siv_independent++;
     return;
   }
        dependence_stats.num_siv_dependent++;
        return;
      }



    else
      {
        *overlaps_a = chrec_known;
        *overlaps_b = chrec_known;
        *last_conflicts = integer_zero_node;
        dependence_stats.num_siv_independent++;
        return;
      }
  }
       else
  {





    *overlaps_a = chrec_known;
    *overlaps_b = chrec_known;
    *last_conflicts = integer_zero_node;
    dependence_stats.num_siv_independent++;
    return;
  }
     }
 }
    }
}
