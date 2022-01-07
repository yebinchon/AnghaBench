
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;
struct chrec_stats {int nb_undetermined; int nb_higher_poly; int nb_affine_multivar; int nb_affine; int nb_chrecs; } ;


 scalar_t__ NULL_TREE ;

 int TDF_STATS ;
 int TREE_CODE (scalar_t__) ;
 scalar_t__ chrec_contains_undetermined (scalar_t__) ;
 scalar_t__ dump_file ;
 int dump_flags ;
 int evolution_function_is_affine_multivariate_p (scalar_t__) ;
 int evolution_function_is_affine_p (scalar_t__) ;
 int fprintf (scalar_t__,char*) ;
 int print_generic_expr (scalar_t__,scalar_t__,int ) ;

__attribute__((used)) static void
gather_chrec_stats (tree chrec, struct chrec_stats *stats)
{
  if (dump_file && (dump_flags & TDF_STATS))
    {
      fprintf (dump_file, "(classify_chrec ");
      print_generic_expr (dump_file, chrec, 0);
      fprintf (dump_file, "\n");
    }

  stats->nb_chrecs++;

  if (chrec == NULL_TREE)
    {
      stats->nb_undetermined++;
      return;
    }

  switch (TREE_CODE (chrec))
    {
    case 128:
      if (evolution_function_is_affine_p (chrec))
 {
   if (dump_file && (dump_flags & TDF_STATS))
     fprintf (dump_file, "  affine_univariate\n");
   stats->nb_affine++;
 }
      else if (evolution_function_is_affine_multivariate_p (chrec))
 {
   if (dump_file && (dump_flags & TDF_STATS))
     fprintf (dump_file, "  affine_multivariate\n");
   stats->nb_affine_multivar++;
 }
      else
 {
   if (dump_file && (dump_flags & TDF_STATS))
     fprintf (dump_file, "  higher_degree_polynomial\n");
   stats->nb_higher_poly++;
 }

      break;

    default:
      break;
    }

  if (chrec_contains_undetermined (chrec))
    {
      if (dump_file && (dump_flags & TDF_STATS))
 fprintf (dump_file, "  undetermined\n");
      stats->nb_undetermined++;
    }

  if (dump_file && (dump_flags & TDF_STATS))
    fprintf (dump_file, ")\n");
}
