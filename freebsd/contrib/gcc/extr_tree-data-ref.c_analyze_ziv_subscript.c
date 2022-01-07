
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int tree ;
struct TYPE_2__ {int num_ziv_unimplemented; int num_ziv_independent; int num_ziv_dependent; int num_ziv; } ;



 int NULL_TREE ;
 int TDF_DETAILS ;
 int TREE_CODE (int ) ;
 int chrec_convert (int ,int ,int ) ;
 int chrec_dont_know ;
 int chrec_fold_minus (int ,int ,int ) ;
 int chrec_known ;
 TYPE_1__ dependence_stats ;
 scalar_t__ dump_file ;
 int dump_flags ;
 int fprintf (scalar_t__,char*) ;
 int integer_type_node ;
 int integer_zero_node ;
 int integer_zerop (int ) ;

__attribute__((used)) static void
analyze_ziv_subscript (tree chrec_a,
         tree chrec_b,
         tree *overlaps_a,
         tree *overlaps_b,
         tree *last_conflicts)
{
  tree difference;
  dependence_stats.num_ziv++;

  if (dump_file && (dump_flags & TDF_DETAILS))
    fprintf (dump_file, "(analyze_ziv_subscript \n");

  chrec_a = chrec_convert (integer_type_node, chrec_a, NULL_TREE);
  chrec_b = chrec_convert (integer_type_node, chrec_b, NULL_TREE);
  difference = chrec_fold_minus (integer_type_node, chrec_a, chrec_b);

  switch (TREE_CODE (difference))
    {
    case 128:
      if (integer_zerop (difference))
 {


   *overlaps_a = integer_zero_node;
   *overlaps_b = integer_zero_node;
   *last_conflicts = chrec_dont_know;
   dependence_stats.num_ziv_dependent++;
 }
      else
 {

   *overlaps_a = chrec_known;
   *overlaps_b = chrec_known;
   *last_conflicts = integer_zero_node;
   dependence_stats.num_ziv_independent++;
 }
      break;

    default:


      if (dump_file && (dump_flags & TDF_DETAILS))
 fprintf (dump_file, "ziv test failed: difference is non-integer.\n");

      *overlaps_a = chrec_dont_know;
      *overlaps_b = chrec_dont_know;
      *last_conflicts = chrec_dont_know;
      dependence_stats.num_ziv_unimplemented++;
      break;
    }

  if (dump_file && (dump_flags & TDF_DETAILS))
    fprintf (dump_file, ")\n");
}
