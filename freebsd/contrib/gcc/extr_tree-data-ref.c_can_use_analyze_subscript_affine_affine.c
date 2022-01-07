
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int CHREC_LEFT (int ) ;
 int CHREC_RIGHT (int ) ;
 int CHREC_VARIABLE (int ) ;
 int NULL_TREE ;
 int TDF_DETAILS ;
 int build_int_cst (int ,int ) ;
 int build_polynomial_chrec (int ,int ,int ) ;
 scalar_t__ chrec_contains_symbols (int ) ;
 int chrec_convert (int ,int ,int ) ;
 int chrec_fold_minus (int ,int ,int ) ;
 int chrec_type (int ) ;
 scalar_t__ dump_file ;
 int dump_flags ;
 int evolution_function_is_constant_p (int ) ;
 int fprintf (scalar_t__,char*) ;

__attribute__((used)) static bool
can_use_analyze_subscript_affine_affine (tree *chrec_a, tree *chrec_b)
{
  tree diff, type, left_a, left_b, right_b;

  if (chrec_contains_symbols (CHREC_RIGHT (*chrec_a))
      || chrec_contains_symbols (CHREC_RIGHT (*chrec_b)))

    return 0;

  type = chrec_type (*chrec_a);
  left_a = CHREC_LEFT (*chrec_a);
  left_b = chrec_convert (type, CHREC_LEFT (*chrec_b), NULL_TREE);
  diff = chrec_fold_minus (type, left_a, left_b);

  if (!evolution_function_is_constant_p (diff))
    return 0;

  if (dump_file && (dump_flags & TDF_DETAILS))
    fprintf (dump_file, "can_use_subscript_aff_aff_for_symbolic \n");

  *chrec_a = build_polynomial_chrec (CHREC_VARIABLE (*chrec_a),
         diff, CHREC_RIGHT (*chrec_a));
  right_b = chrec_convert (type, CHREC_RIGHT (*chrec_b), NULL_TREE);
  *chrec_b = build_polynomial_chrec (CHREC_VARIABLE (*chrec_b),
         build_int_cst (type, 0),
         right_b);
  return 1;
}
