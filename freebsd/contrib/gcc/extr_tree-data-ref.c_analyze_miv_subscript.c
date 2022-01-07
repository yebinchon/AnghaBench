
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ tree ;
struct TYPE_2__ {int num_miv_unimplemented; int num_miv_dependent; int num_miv_independent; int num_miv; } ;


 int CHREC_VARIABLE (scalar_t__) ;
 int NULL_TREE ;
 int TDF_DETAILS ;
 int analyze_subscript_affine_affine (scalar_t__,scalar_t__,scalar_t__*,scalar_t__*,scalar_t__*) ;
 int chrec_contains_symbols (scalar_t__) ;
 scalar_t__ chrec_convert (int ,scalar_t__,int ) ;
 scalar_t__ chrec_dont_know ;
 scalar_t__ chrec_fold_minus (int ,scalar_t__,scalar_t__) ;
 scalar_t__ chrec_known ;
 scalar_t__ chrec_steps_divide_constant_p (scalar_t__,scalar_t__,int*) ;
 TYPE_1__ dependence_stats ;
 scalar_t__ dump_file ;
 int dump_flags ;
 scalar_t__ eq_evolutions_p (scalar_t__,scalar_t__) ;
 scalar_t__ evolution_function_is_affine_multivariate_p (scalar_t__) ;
 scalar_t__ evolution_function_is_constant_p (scalar_t__) ;
 int fprintf (scalar_t__,char*) ;
 scalar_t__ get_number_of_iters_for_loop (int ) ;
 int integer_type_node ;
 scalar_t__ integer_zero_node ;

__attribute__((used)) static void
analyze_miv_subscript (tree chrec_a,
         tree chrec_b,
         tree *overlaps_a,
         tree *overlaps_b,
         tree *last_conflicts)
{
  bool divide_p = 1;
  tree difference;
  dependence_stats.num_miv++;
  if (dump_file && (dump_flags & TDF_DETAILS))
    fprintf (dump_file, "(analyze_miv_subscript \n");

  chrec_a = chrec_convert (integer_type_node, chrec_a, NULL_TREE);
  chrec_b = chrec_convert (integer_type_node, chrec_b, NULL_TREE);
  difference = chrec_fold_minus (integer_type_node, chrec_a, chrec_b);

  if (eq_evolutions_p (chrec_a, chrec_b))
    {


      *overlaps_a = integer_zero_node;
      *overlaps_b = integer_zero_node;
      *last_conflicts = get_number_of_iters_for_loop (CHREC_VARIABLE (chrec_a));
      dependence_stats.num_miv_dependent++;
    }

  else if (evolution_function_is_constant_p (difference)


    && chrec_steps_divide_constant_p (chrec_a, difference, &divide_p)
    && !divide_p)
    {





      *overlaps_a = chrec_known;
      *overlaps_b = chrec_known;
      *last_conflicts = integer_zero_node;
      dependence_stats.num_miv_independent++;
    }

  else if (evolution_function_is_affine_multivariate_p (chrec_a)
    && !chrec_contains_symbols (chrec_a)
    && evolution_function_is_affine_multivariate_p (chrec_b)
    && !chrec_contains_symbols (chrec_b))
    {
      analyze_subscript_affine_affine (chrec_a, chrec_b,
           overlaps_a, overlaps_b, last_conflicts);

      if (*overlaps_a == chrec_dont_know
   || *overlaps_b == chrec_dont_know)
 dependence_stats.num_miv_unimplemented++;
      else if (*overlaps_a == chrec_known
        || *overlaps_b == chrec_known)
 dependence_stats.num_miv_independent++;
      else
 dependence_stats.num_miv_dependent++;
    }

  else
    {

      if (dump_file && (dump_flags & TDF_DETAILS))
 fprintf (dump_file, "analyze_miv_subscript test failed: unimplemented.\n");

      *overlaps_a = chrec_dont_know;
      *overlaps_b = chrec_dont_know;
      *last_conflicts = chrec_dont_know;
      dependence_stats.num_miv_unimplemented++;
    }

  if (dump_file && (dump_flags & TDF_DETAILS))
    fprintf (dump_file, ")\n");
}
