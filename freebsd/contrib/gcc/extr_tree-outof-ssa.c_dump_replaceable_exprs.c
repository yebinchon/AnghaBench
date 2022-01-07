
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;
typedef int FILE ;


 scalar_t__ NULL_TREE ;
 scalar_t__ SINGLE_SSA_TREE_OPERAND (scalar_t__,int ) ;
 int SSA_OP_DEF ;
 int TDF_SLIM ;
 scalar_t__ TREE_OPERAND (scalar_t__,int) ;
 int fprintf (int *,char*) ;
 int gcc_assert (int) ;
 scalar_t__ num_ssa_names ;
 int print_generic_expr (int *,scalar_t__,int ) ;

__attribute__((used)) static void
dump_replaceable_exprs (FILE *f, tree *expr)
{
  tree stmt, var;
  int x;
  fprintf (f, "\nReplacing Expressions\n");
  for (x = 0; x < (int)num_ssa_names + 1; x++)
    if (expr[x])
      {
        stmt = expr[x];
 var = SINGLE_SSA_TREE_OPERAND (stmt, SSA_OP_DEF);
 gcc_assert (var != NULL_TREE);
 print_generic_expr (f, var, TDF_SLIM);
 fprintf (f, " replace with --> ");
 print_generic_expr (f, TREE_OPERAND (stmt, 1), TDF_SLIM);
 fprintf (f, "\n");
      }
  fprintf (f, "\n");
}
