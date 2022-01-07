
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;
struct loop {int num; } ;


 scalar_t__ SSA_NAME ;
 int TDF_DETAILS ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 scalar_t__ analyze_scalar_evolution_1 (struct loop*,scalar_t__,int ) ;
 scalar_t__ chrec_dont_know ;
 scalar_t__ dump_file ;
 int dump_flags ;
 int fprintf (scalar_t__,char*,...) ;
 int get_scalar_evolution (scalar_t__) ;
 int print_generic_expr (scalar_t__,scalar_t__,int ) ;

tree
analyze_scalar_evolution (struct loop *loop, tree var)
{
  tree res;

  if (dump_file && (dump_flags & TDF_DETAILS))
    {
      fprintf (dump_file, "(analyze_scalar_evolution \n");
      fprintf (dump_file, "  (loop_nb = %d)\n", loop->num);
      fprintf (dump_file, "  (scalar = ");
      print_generic_expr (dump_file, var, 0);
      fprintf (dump_file, ")\n");
    }

  res = analyze_scalar_evolution_1 (loop, var, get_scalar_evolution (var));

  if (TREE_CODE (var) == SSA_NAME && res == chrec_dont_know)
    res = var;

  if (dump_file && (dump_flags & TDF_DETAILS))
    fprintf (dump_file, ")\n");

  return res;
}
