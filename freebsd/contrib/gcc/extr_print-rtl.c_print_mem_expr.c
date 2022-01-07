
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;
typedef int FILE ;


 scalar_t__ ALIGN_INDIRECT_REF ;
 scalar_t__ COMPONENT_REF ;
 scalar_t__ INDIRECT_REF ;
 scalar_t__ MISALIGNED_INDIRECT_REF ;
 scalar_t__ RESULT_DECL ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 scalar_t__ TREE_OPERAND (scalar_t__,int) ;
 int fputc (char,int *) ;
 int fputs (char*,int *) ;
 int print_decl_name (int *,scalar_t__) ;

void
print_mem_expr (FILE *outfile, tree expr)
{
  if (TREE_CODE (expr) == COMPONENT_REF)
    {
      if (TREE_OPERAND (expr, 0))
 print_mem_expr (outfile, TREE_OPERAND (expr, 0));
      else
 fputs (" <variable>", outfile);
      fputc ('.', outfile);
      print_decl_name (outfile, TREE_OPERAND (expr, 1));
    }
  else if (TREE_CODE (expr) == INDIRECT_REF)
    {
      fputs (" (*", outfile);
      print_mem_expr (outfile, TREE_OPERAND (expr, 0));
      fputs (")", outfile);
    }
  else if (TREE_CODE (expr) == ALIGN_INDIRECT_REF)
    {
      fputs (" (A*", outfile);
      print_mem_expr (outfile, TREE_OPERAND (expr, 0));
      fputs (")", outfile);
    }
  else if (TREE_CODE (expr) == MISALIGNED_INDIRECT_REF)
    {
      fputs (" (M*", outfile);
      print_mem_expr (outfile, TREE_OPERAND (expr, 0));
      fputs (")", outfile);
    }
  else if (TREE_CODE (expr) == RESULT_DECL)
    fputs (" <result>", outfile);
  else
    {
      fputc (' ', outfile);
      print_decl_name (outfile, expr);
    }
}
