
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int TDF_DETAILS ;
 scalar_t__ TREE_THIS_VOLATILE (int ) ;
 int TREE_TYPE (int ) ;
 scalar_t__ dump_file ;
 int dump_flags ;
 int fprintf (scalar_t__,char*) ;
 int is_gimple_non_addressable (int ) ;
 scalar_t__ is_sra_scalar_type (int ) ;
 int print_generic_expr (scalar_t__,int ,int) ;
 int sra_type_can_be_decomposed_p (int ) ;

__attribute__((used)) static bool
decl_can_be_decomposed_p (tree var)
{

  if (is_sra_scalar_type (TREE_TYPE (var)))
    return 0;


  if (!is_gimple_non_addressable (var))
    {
      if (dump_file && (dump_flags & TDF_DETAILS))
 {
   fprintf (dump_file, "Cannot scalarize variable ");
   print_generic_expr (dump_file, var, dump_flags);
   fprintf (dump_file, " because it must live in memory\n");
 }
      return 0;
    }


  if (TREE_THIS_VOLATILE (var))
    {
      if (dump_file && (dump_flags & TDF_DETAILS))
 {
   fprintf (dump_file, "Cannot scalarize variable ");
   print_generic_expr (dump_file, var, dump_flags);
   fprintf (dump_file, " because it is declared volatile\n");
 }
      return 0;
    }


  if (!sra_type_can_be_decomposed_p (TREE_TYPE (var)))
    {
      if (dump_file && (dump_flags & TDF_DETAILS))
 {
   fprintf (dump_file, "Cannot scalarize variable ");
   print_generic_expr (dump_file, var, dump_flags);
   fprintf (dump_file, " because its type cannot be decomposed\n");
 }
      return 0;
    }

  return 1;
}
