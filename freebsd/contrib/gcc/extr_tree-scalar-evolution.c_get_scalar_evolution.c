
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;





 int TDF_DETAILS ;
 int TDF_STATS ;
 int TREE_CODE (int ) ;
 int chrec_not_analyzed_yet ;
 scalar_t__ dump_file ;
 int dump_flags ;
 int * find_var_scev_info (int ) ;
 int fprintf (scalar_t__,char*) ;
 int nb_get_scev ;
 int print_generic_expr (scalar_t__,int ,int ) ;

__attribute__((used)) static tree
get_scalar_evolution (tree scalar)
{
  tree res;

  if (dump_file)
    {
      if (dump_flags & TDF_DETAILS)
 {
   fprintf (dump_file, "(get_scalar_evolution \n");
   fprintf (dump_file, "  (scalar = ");
   print_generic_expr (dump_file, scalar, 0);
   fprintf (dump_file, ")\n");
 }
      if (dump_flags & TDF_STATS)
 nb_get_scev++;
    }

  switch (TREE_CODE (scalar))
    {
    case 128:
      res = *find_var_scev_info (scalar);
      break;

    case 129:
    case 130:
      res = scalar;
      break;

    default:
      res = chrec_not_analyzed_yet;
      break;
    }

  if (dump_file && (dump_flags & TDF_DETAILS))
    {
      fprintf (dump_file, "  (scalar_evolution = ");
      print_generic_expr (dump_file, res, 0);
      fprintf (dump_file, "))\n");
    }

  return res;
}
