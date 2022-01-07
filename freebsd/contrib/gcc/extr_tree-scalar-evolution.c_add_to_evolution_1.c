
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int CHREC_LEFT (int ) ;
 int CHREC_RIGHT (int ) ;
 unsigned int CHREC_VARIABLE (int ) ;

 int SCALAR_FLOAT_TYPE_P (int ) ;
 int TREE_CODE (int ) ;
 int build_int_cst (int ,int ) ;
 int build_polynomial_chrec (unsigned int,int ,int ) ;
 int build_real (int ,int ) ;
 int chrec_convert (int ,int ,int ) ;
 int chrec_dont_know ;
 int chrec_fold_plus (int ,int ,int ) ;
 int chrec_type (int ) ;
 int dconst0 ;

__attribute__((used)) static tree
add_to_evolution_1 (unsigned loop_nb, tree chrec_before, tree to_add,
      tree at_stmt)
{
  tree type, left, right;

  switch (TREE_CODE (chrec_before))
    {
    case 128:
      if (CHREC_VARIABLE (chrec_before) <= loop_nb)
 {
   unsigned var;

   type = chrec_type (chrec_before);


   if (CHREC_VARIABLE (chrec_before) < loop_nb)
     {
       var = loop_nb;
       left = chrec_before;
       right = SCALAR_FLOAT_TYPE_P (type)
  ? build_real (type, dconst0)
  : build_int_cst (type, 0);
     }
   else
     {
       var = CHREC_VARIABLE (chrec_before);
       left = CHREC_LEFT (chrec_before);
       right = CHREC_RIGHT (chrec_before);
     }

   to_add = chrec_convert (type, to_add, at_stmt);
   right = chrec_convert (type, right, at_stmt);
   right = chrec_fold_plus (type, right, to_add);
   return build_polynomial_chrec (var, left, right);
 }
      else
 {

   left = add_to_evolution_1 (loop_nb, CHREC_LEFT (chrec_before),
         to_add, at_stmt);
   right = CHREC_RIGHT (chrec_before);
   right = chrec_convert (chrec_type (left), right, at_stmt);
   return build_polynomial_chrec (CHREC_VARIABLE (chrec_before),
      left, right);
 }

    default:

      if (chrec_before == chrec_dont_know)
 return chrec_dont_know;

      left = chrec_before;
      right = chrec_convert (chrec_type (left), to_add, at_stmt);
      return build_polynomial_chrec (loop_nb, left, right);
    }
}
