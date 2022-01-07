
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 scalar_t__ SSA_NAME ;
 int TDF_DETAILS ;
 int TDF_STATS ;
 scalar_t__ TREE_CODE (int ) ;
 scalar_t__ dump_file ;
 int dump_flags ;
 int * find_var_scev_info (int ) ;
 int fprintf (scalar_t__,char*) ;
 int nb_set_scev ;
 int print_generic_expr (scalar_t__,int ,int ) ;

__attribute__((used)) static void
set_scalar_evolution (tree scalar, tree chrec)
{
  tree *scalar_info;

  if (TREE_CODE (scalar) != SSA_NAME)
    return;

  scalar_info = find_var_scev_info (scalar);

  if (dump_file)
    {
      if (dump_flags & TDF_DETAILS)
 {
   fprintf (dump_file, "(set_scalar_evolution \n");
   fprintf (dump_file, "  (scalar = ");
   print_generic_expr (dump_file, scalar, 0);
   fprintf (dump_file, ")\n  (scalar_evolution = ");
   print_generic_expr (dump_file, chrec, 0);
   fprintf (dump_file, "))\n");
 }
      if (dump_flags & TDF_STATS)
 nb_set_scev++;
    }

  *scalar_info = chrec;
}
