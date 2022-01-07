
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef int REAL_VALUE_TYPE ;






 int HONOR_INFINITIES (int ) ;
 int INTEGRAL_TYPE_P (int ) ;




 int NEGATE_EXPR ;

 int OMP_CLAUSE_REDUCTION_CODE (int ) ;

 int SCALAR_FLOAT_TYPE_P (int ) ;





 int TYPE_MAX_VALUE (int ) ;
 int TYPE_MIN_VALUE (int ) ;
 int TYPE_MODE (int ) ;
 int build_real (int ,int ) ;
 int fold_convert (int ,int ) ;
 int gcc_assert (int ) ;
 int gcc_unreachable () ;
 int integer_minus_one_node ;
 int integer_one_node ;
 int integer_zero_node ;
 int real_arithmetic (int *,int ,int *,int *) ;
 int real_inf (int *) ;
 int real_maxval (int *,int,int ) ;

tree
omp_reduction_init (tree clause, tree type)
{
  switch (OMP_CLAUSE_REDUCTION_CODE (clause))
    {
    case 133:
    case 137:
    case 141:
    case 140:
    case 129:
    case 130:
    case 128:
    case 134:
      return fold_convert (type, integer_zero_node);

    case 135:
    case 131:
    case 132:
    case 139:
      return fold_convert (type, integer_one_node);

    case 142:
      return fold_convert (type, integer_minus_one_node);

    case 138:
      if (SCALAR_FLOAT_TYPE_P (type))
 {
   REAL_VALUE_TYPE max, min;
   if (HONOR_INFINITIES (TYPE_MODE (type)))
     {
       real_inf (&max);
       real_arithmetic (&min, NEGATE_EXPR, &max, ((void*)0));
     }
   else
     real_maxval (&min, 1, TYPE_MODE (type));
   return build_real (type, min);
 }
      else
 {
   gcc_assert (INTEGRAL_TYPE_P (type));
   return TYPE_MIN_VALUE (type);
 }

    case 136:
      if (SCALAR_FLOAT_TYPE_P (type))
 {
   REAL_VALUE_TYPE max;
   if (HONOR_INFINITIES (TYPE_MODE (type)))
     real_inf (&max);
   else
     real_maxval (&max, 0, TYPE_MODE (type));
   return build_real (type, max);
 }
      else
 {
   gcc_assert (INTEGRAL_TYPE_P (type));
   return TYPE_MAX_VALUE (type);
 }

    default:
      gcc_unreachable ();
    }
}
