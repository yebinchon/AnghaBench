
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ tree ;
struct TYPE_2__ {int num_subscript_undetermined; int num_same_subscript_function; int num_subscript_tests; } ;


 scalar_t__ NULL_TREE ;
 int TDF_DETAILS ;
 int analyze_miv_subscript (scalar_t__,scalar_t__,scalar_t__*,scalar_t__*,scalar_t__*) ;
 int analyze_siv_subscript (scalar_t__,scalar_t__,scalar_t__*,scalar_t__*,scalar_t__*) ;
 int analyze_ziv_subscript (scalar_t__,scalar_t__,scalar_t__*,scalar_t__*,scalar_t__*) ;
 scalar_t__ chrec_contains_symbols (scalar_t__) ;
 scalar_t__ chrec_contains_undetermined (scalar_t__) ;
 scalar_t__ chrec_dont_know ;
 TYPE_1__ dependence_stats ;
 scalar_t__ dump_file ;
 int dump_flags ;
 scalar_t__ eq_evolutions_p (scalar_t__,scalar_t__) ;
 scalar_t__ evolution_function_is_affine_multivariate_p (scalar_t__) ;
 int fprintf (scalar_t__,char*) ;
 scalar_t__ integer_zero_node ;
 int print_generic_expr (scalar_t__,scalar_t__,int ) ;
 scalar_t__ siv_subscript_p (scalar_t__,scalar_t__) ;
 scalar_t__ ziv_subscript_p (scalar_t__,scalar_t__) ;

__attribute__((used)) static void
analyze_overlapping_iterations (tree chrec_a,
    tree chrec_b,
    tree *overlap_iterations_a,
    tree *overlap_iterations_b,
    tree *last_conflicts)
{
  dependence_stats.num_subscript_tests++;

  if (dump_file && (dump_flags & TDF_DETAILS))
    {
      fprintf (dump_file, "(analyze_overlapping_iterations \n");
      fprintf (dump_file, "  (chrec_a = ");
      print_generic_expr (dump_file, chrec_a, 0);
      fprintf (dump_file, ")\n  (chrec_b = ");
      print_generic_expr (dump_file, chrec_b, 0);
      fprintf (dump_file, ")\n");
    }

  if (chrec_a == NULL_TREE
      || chrec_b == NULL_TREE
      || chrec_contains_undetermined (chrec_a)
      || chrec_contains_undetermined (chrec_b))
    {
      dependence_stats.num_subscript_undetermined++;

      *overlap_iterations_a = chrec_dont_know;
      *overlap_iterations_b = chrec_dont_know;
    }



  else if (eq_evolutions_p (chrec_a, chrec_b)
    && evolution_function_is_affine_multivariate_p (chrec_a))
    {
      dependence_stats.num_same_subscript_function++;
      *overlap_iterations_a = integer_zero_node;
      *overlap_iterations_b = integer_zero_node;
      *last_conflicts = chrec_dont_know;
    }



  else if ((chrec_contains_symbols (chrec_a)
     || chrec_contains_symbols (chrec_b))
    && (!evolution_function_is_affine_multivariate_p (chrec_a)
        || !evolution_function_is_affine_multivariate_p (chrec_b)))
    {
      dependence_stats.num_subscript_undetermined++;
      *overlap_iterations_a = chrec_dont_know;
      *overlap_iterations_b = chrec_dont_know;
    }

  else if (ziv_subscript_p (chrec_a, chrec_b))
    analyze_ziv_subscript (chrec_a, chrec_b,
      overlap_iterations_a, overlap_iterations_b,
      last_conflicts);

  else if (siv_subscript_p (chrec_a, chrec_b))
    analyze_siv_subscript (chrec_a, chrec_b,
      overlap_iterations_a, overlap_iterations_b,
      last_conflicts);

  else
    analyze_miv_subscript (chrec_a, chrec_b,
      overlap_iterations_a, overlap_iterations_b,
      last_conflicts);

  if (dump_file && (dump_flags & TDF_DETAILS))
    {
      fprintf (dump_file, "  (overlap_iterations_a = ");
      print_generic_expr (dump_file, *overlap_iterations_a, 0);
      fprintf (dump_file, ")\n  (overlap_iterations_b = ");
      print_generic_expr (dump_file, *overlap_iterations_b, 0);
      fprintf (dump_file, ")\n");
      fprintf (dump_file, ")\n");
    }
}
