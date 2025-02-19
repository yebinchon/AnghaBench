
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 scalar_t__ CHREC_LEFT (scalar_t__) ;
 scalar_t__ CHREC_RIGHT (scalar_t__) ;
 int CHREC_VARIABLE (scalar_t__) ;
 scalar_t__ NULL_TREE ;
 scalar_t__ POLYNOMIAL_CHREC ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 scalar_t__ TREE_TYPE (scalar_t__) ;
 scalar_t__ TYPE_PRECISION (scalar_t__) ;
 scalar_t__ automatically_generated_chrec_p (scalar_t__) ;
 scalar_t__ avoid_arithmetics_in_type_p (scalar_t__) ;
 scalar_t__ build_polynomial_chrec (int ,scalar_t__,scalar_t__) ;
 scalar_t__ chrec_convert (scalar_t__,scalar_t__,scalar_t__) ;

tree
chrec_convert_aggressive (tree type, tree chrec)
{
  tree inner_type, left, right, lc, rc;

  if (automatically_generated_chrec_p (chrec)
      || TREE_CODE (chrec) != POLYNOMIAL_CHREC)
    return NULL_TREE;

  inner_type = TREE_TYPE (chrec);
  if (TYPE_PRECISION (type) > TYPE_PRECISION (inner_type))
    return NULL_TREE;


  if (avoid_arithmetics_in_type_p (type))
    return NULL_TREE;

  left = CHREC_LEFT (chrec);
  right = CHREC_RIGHT (chrec);
  lc = chrec_convert_aggressive (type, left);
  if (!lc)
    lc = chrec_convert (type, left, NULL_TREE);
  rc = chrec_convert_aggressive (type, right);
  if (!rc)
    rc = chrec_convert (type, right, NULL_TREE);

  return build_polynomial_chrec (CHREC_VARIABLE (chrec), lc, rc);
}
