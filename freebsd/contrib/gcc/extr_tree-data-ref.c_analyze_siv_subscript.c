
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ tree ;
struct TYPE_2__ {int num_siv_unimplemented; int num_siv_dependent; int num_siv_independent; int num_siv; } ;


 int TDF_DETAILS ;
 int analyze_siv_subscript_cst_affine (scalar_t__,scalar_t__,scalar_t__*,scalar_t__*,scalar_t__*) ;
 int analyze_subscript_affine_affine (scalar_t__,scalar_t__,scalar_t__*,scalar_t__*,scalar_t__*) ;
 scalar_t__ can_use_analyze_subscript_affine_affine (scalar_t__*,scalar_t__*) ;
 int chrec_contains_symbols (scalar_t__) ;
 scalar_t__ chrec_dont_know ;
 scalar_t__ chrec_known ;
 TYPE_1__ dependence_stats ;
 scalar_t__ dump_file ;
 int dump_flags ;
 scalar_t__ evolution_function_is_affine_p (scalar_t__) ;
 scalar_t__ evolution_function_is_constant_p (scalar_t__) ;
 int fprintf (scalar_t__,char*) ;

__attribute__((used)) static void
analyze_siv_subscript (tree chrec_a,
         tree chrec_b,
         tree *overlaps_a,
         tree *overlaps_b,
         tree *last_conflicts)
{
  dependence_stats.num_siv++;

  if (dump_file && (dump_flags & TDF_DETAILS))
    fprintf (dump_file, "(analyze_siv_subscript \n");

  if (evolution_function_is_constant_p (chrec_a)
      && evolution_function_is_affine_p (chrec_b))
    analyze_siv_subscript_cst_affine (chrec_a, chrec_b,
          overlaps_a, overlaps_b, last_conflicts);

  else if (evolution_function_is_affine_p (chrec_a)
    && evolution_function_is_constant_p (chrec_b))
    analyze_siv_subscript_cst_affine (chrec_b, chrec_a,
          overlaps_b, overlaps_a, last_conflicts);

  else if (evolution_function_is_affine_p (chrec_a)
    && evolution_function_is_affine_p (chrec_b))
    {
      if (!chrec_contains_symbols (chrec_a)
   && !chrec_contains_symbols (chrec_b))
 {
   analyze_subscript_affine_affine (chrec_a, chrec_b,
        overlaps_a, overlaps_b,
        last_conflicts);

   if (*overlaps_a == chrec_dont_know
       || *overlaps_b == chrec_dont_know)
     dependence_stats.num_siv_unimplemented++;
   else if (*overlaps_a == chrec_known
     || *overlaps_b == chrec_known)
     dependence_stats.num_siv_independent++;
   else
     dependence_stats.num_siv_dependent++;
 }
      else if (can_use_analyze_subscript_affine_affine (&chrec_a,
       &chrec_b))
 {
   analyze_subscript_affine_affine (chrec_a, chrec_b,
        overlaps_a, overlaps_b,
        last_conflicts);


   *last_conflicts = chrec_dont_know;

   if (*overlaps_a == chrec_dont_know
       || *overlaps_b == chrec_dont_know)
     dependence_stats.num_siv_unimplemented++;
   else if (*overlaps_a == chrec_known
     || *overlaps_b == chrec_known)
     dependence_stats.num_siv_independent++;
   else
     dependence_stats.num_siv_dependent++;
 }
      else
 goto siv_subscript_dontknow;
    }

  else
    {
    siv_subscript_dontknow:;
      if (dump_file && (dump_flags & TDF_DETAILS))
 fprintf (dump_file, "siv test failed: unimplemented.\n");
      *overlaps_a = chrec_dont_know;
      *overlaps_b = chrec_dont_know;
      *last_conflicts = chrec_dont_know;
      dependence_stats.num_siv_unimplemented++;
    }

  if (dump_file && (dump_flags & TDF_DETAILS))
    fprintf (dump_file, ")\n");
}
