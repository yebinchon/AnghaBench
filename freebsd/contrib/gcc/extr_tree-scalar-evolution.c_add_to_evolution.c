
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;
typedef enum tree_code { ____Placeholder_tree_code } tree_code ;


 int MINUS_EXPR ;
 scalar_t__ NULL_TREE ;
 scalar_t__ POLYNOMIAL_CHREC ;
 scalar_t__ SCALAR_FLOAT_TYPE_P (scalar_t__) ;
 int TDF_DETAILS ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 scalar_t__ add_to_evolution_1 (unsigned int,scalar_t__,scalar_t__,scalar_t__) ;
 int build_int_cst_type (scalar_t__,int) ;
 int build_real (scalar_t__,int ) ;
 scalar_t__ chrec_dont_know ;
 scalar_t__ chrec_fold_multiply (scalar_t__,scalar_t__,int ) ;
 scalar_t__ chrec_type (scalar_t__) ;
 int dconstm1 ;
 scalar_t__ dump_file ;
 int dump_flags ;
 int fprintf (scalar_t__,char*,...) ;
 int print_generic_expr (scalar_t__,scalar_t__,int ) ;

__attribute__((used)) static tree
add_to_evolution (unsigned loop_nb, tree chrec_before, enum tree_code code,
    tree to_add, tree at_stmt)
{
  tree type = chrec_type (to_add);
  tree res = NULL_TREE;

  if (to_add == NULL_TREE)
    return chrec_before;



  if (TREE_CODE (to_add) == POLYNOMIAL_CHREC)

    return chrec_dont_know;

  if (dump_file && (dump_flags & TDF_DETAILS))
    {
      fprintf (dump_file, "(add_to_evolution \n");
      fprintf (dump_file, "  (loop_nb = %d)\n", loop_nb);
      fprintf (dump_file, "  (chrec_before = ");
      print_generic_expr (dump_file, chrec_before, 0);
      fprintf (dump_file, ")\n  (to_add = ");
      print_generic_expr (dump_file, to_add, 0);
      fprintf (dump_file, ")\n");
    }

  if (code == MINUS_EXPR)
    to_add = chrec_fold_multiply (type, to_add, SCALAR_FLOAT_TYPE_P (type)
      ? build_real (type, dconstm1)
      : build_int_cst_type (type, -1));

  res = add_to_evolution_1 (loop_nb, chrec_before, to_add, at_stmt);

  if (dump_file && (dump_flags & TDF_DETAILS))
    {
      fprintf (dump_file, "  (res = ");
      print_generic_expr (dump_file, res, 0);
      fprintf (dump_file, "))\n");
    }

  return res;
}
