
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef int double_int ;






 scalar_t__ INTEGRAL_TYPE_P (int ) ;



 int const TREE_CODE (int ) ;
 int TREE_OPERAND (int ,int) ;
 int TREE_TYPE (int ) ;
 int TYPE_MAX_VALUE (int ) ;
 int TYPE_PRECISION (int ) ;
 int TYPE_UNSIGNED (int ) ;
 int double_int_add (int ,int ) ;
 int double_int_neg (int ) ;
 int double_int_negative_p (int ) ;
 int double_int_sext (int ,int ) ;
 int double_int_to_tree (int ,int ) ;
 int double_int_ucmp (int ,int ) ;
 int double_int_udiv (int ,int ,int const) ;
 int implies_ge_p (int ,int ,int ) ;
 int implies_nonnegative_p (int ,int ) ;
 int tree_int_cst_sign_bit (int ) ;
 int tree_to_double_int (int ) ;
 int upper_bound_in_type (int ,int ) ;

__attribute__((used)) static double_int
derive_constant_upper_bound (tree val, tree additional)
{
  tree type = TREE_TYPE (val);
  tree op0, op1, subtype, maxt;
  double_int bnd, max, mmax, cst;

  if (INTEGRAL_TYPE_P (type))
    maxt = TYPE_MAX_VALUE (type);
  else
    maxt = upper_bound_in_type (type, type);

  max = tree_to_double_int (maxt);

  switch (TREE_CODE (val))
    {
    case 131:
      return tree_to_double_int (val);

    case 129:
    case 134:
      op0 = TREE_OPERAND (val, 0);
      subtype = TREE_TYPE (op0);
      if (!TYPE_UNSIGNED (subtype)


   && TYPE_UNSIGNED (type)
   && !implies_nonnegative_p (additional, op0))
 {



   return max;
 }



      bnd = derive_constant_upper_bound (op0, additional);



      if (double_int_ucmp (max, bnd) < 0)
 return max;

      return bnd;

    case 128:
    case 130:
      op0 = TREE_OPERAND (val, 0);
      op1 = TREE_OPERAND (val, 1);

      if (TREE_CODE (op1) != 131
   || !implies_nonnegative_p (additional, op0))
 return max;




      cst = tree_to_double_int (op1);
      cst = double_int_sext (cst, TYPE_PRECISION (type));
      if (TREE_CODE (val) == 128)
 cst = double_int_neg (cst);

      bnd = derive_constant_upper_bound (op0, additional);

      if (double_int_negative_p (cst))
 {
   cst = double_int_neg (cst);

   if (double_int_negative_p (cst))
     return max;;




   mmax = double_int_add (max, double_int_neg (cst));
   if (double_int_ucmp (bnd, mmax) > 0)
     return max;

   return double_int_add (bnd, cst);
 }
      else
 {
   if (double_int_ucmp (bnd, cst) < 0)
     return max;

   if (TYPE_UNSIGNED (type)
       && !implies_ge_p (additional,
    op0, double_int_to_tree (type, cst)))
     return max;

   bnd = double_int_add (bnd, double_int_neg (cst));
 }

      return bnd;

    case 132:
    case 133:
      op0 = TREE_OPERAND (val, 0);
      op1 = TREE_OPERAND (val, 1);
      if (TREE_CODE (op1) != 131
   || tree_int_cst_sign_bit (op1))
 return max;

      bnd = derive_constant_upper_bound (op0, additional);
      return double_int_udiv (bnd, tree_to_double_int (op1), 132);

    default:
      return max;
    }
}
