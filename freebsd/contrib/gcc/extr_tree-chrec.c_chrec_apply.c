
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int CHREC_LEFT (int ) ;
 int CHREC_RIGHT (int ) ;
 scalar_t__ INTEGER_CST ;
 int NULL_TREE ;
 scalar_t__ POLYNOMIAL_CHREC ;
 scalar_t__ SCALAR_FLOAT_TYPE_P (int ) ;
 int TDF_DETAILS ;
 scalar_t__ TREE_CODE (int ) ;
 scalar_t__ automatically_generated_chrec_p (int ) ;
 int build_real_from_int_cst (int ,int ) ;
 scalar_t__ chrec_contains_symbols_defined_in_loop (int ,unsigned int) ;
 int chrec_convert (int ,int ,int ) ;
 int chrec_dont_know ;
 int chrec_evaluate (unsigned int,int ,int ,int ) ;
 int chrec_fold_multiply (int ,int ,int ) ;
 int chrec_fold_plus (int ,int ,int ) ;
 int chrec_type (int ) ;
 scalar_t__ dump_file ;
 int dump_flags ;
 scalar_t__ evolution_function_is_affine_p (int ) ;
 int fprintf (scalar_t__,char*,...) ;
 int integer_zerop (int ) ;
 int print_generic_expr (scalar_t__,int ,int ) ;
 int tree_int_cst_sgn (int ) ;

tree
chrec_apply (unsigned var,
      tree chrec,
      tree x)
{
  tree type = chrec_type (chrec);
  tree res = chrec_dont_know;

  if (automatically_generated_chrec_p (chrec)
      || automatically_generated_chrec_p (x)




      || chrec_contains_symbols_defined_in_loop (chrec, var))
    return chrec_dont_know;

  if (dump_file && (dump_flags & TDF_DETAILS))
    fprintf (dump_file, "(chrec_apply \n");

  if (TREE_CODE (x) == INTEGER_CST && SCALAR_FLOAT_TYPE_P (type))
    x = build_real_from_int_cst (type, x);

  if (evolution_function_is_affine_p (chrec))
    {

      x = chrec_convert (type, x, NULL_TREE);
      res = chrec_fold_multiply (type, CHREC_RIGHT (chrec), x);
      if (!integer_zerop (CHREC_LEFT (chrec)))
 res = chrec_fold_plus (type, CHREC_LEFT (chrec), res);
    }

  else if (TREE_CODE (chrec) != POLYNOMIAL_CHREC)
    res = chrec;

  else if (TREE_CODE (x) == INTEGER_CST
    && tree_int_cst_sgn (x) == 1)

    res = chrec_evaluate (var, chrec, x, 0);
  else
    res = chrec_dont_know;

  if (dump_file && (dump_flags & TDF_DETAILS))
    {
      fprintf (dump_file, "  (varying_loop = %d\n", var);
      fprintf (dump_file, ")\n  (chrec = ");
      print_generic_expr (dump_file, chrec, 0);
      fprintf (dump_file, ")\n  (x = ");
      print_generic_expr (dump_file, x, 0);
      fprintf (dump_file, ")\n  (res = ");
      print_generic_expr (dump_file, res, 0);
      fprintf (dump_file, "))\n");
    }

  return res;
}
