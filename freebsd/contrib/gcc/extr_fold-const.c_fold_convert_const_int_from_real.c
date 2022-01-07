
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;
typedef enum tree_code { ____Placeholder_tree_code } tree_code ;
typedef int REAL_VALUE_TYPE ;
typedef scalar_t__ HOST_WIDE_INT ;






 int NULL_TREE ;
 scalar_t__ REAL_VALUES_LESS (int ,int ) ;
 scalar_t__ REAL_VALUE_ISNAN (int ) ;
 int REAL_VALUE_TO_INT (scalar_t__*,scalar_t__*,int ) ;
 int TREE_CONSTANT_OVERFLOW (scalar_t__) ;
 scalar_t__ TREE_INT_CST_HIGH (scalar_t__) ;
 scalar_t__ TREE_INT_CST_LOW (scalar_t__) ;
 int TREE_OVERFLOW (scalar_t__) ;
 int TREE_REAL_CST (scalar_t__) ;
 scalar_t__ TYPE_MAX_VALUE (scalar_t__) ;
 scalar_t__ TYPE_MIN_VALUE (scalar_t__) ;
 int VOIDmode ;
 scalar_t__ build_int_cst_wide (scalar_t__,scalar_t__,scalar_t__) ;
 scalar_t__ force_fit_type (scalar_t__,int,int,int ) ;
 int gcc_unreachable () ;
 int real_ceil (int *,int ,int *) ;
 int real_floor (int *,int ,int *) ;
 int real_round (int *,int ,int *) ;
 int real_trunc (int *,int ,int *) ;
 int real_value_from_int_cst (int ,scalar_t__) ;

__attribute__((used)) static tree
fold_convert_const_int_from_real (enum tree_code code, tree type, tree arg1)
{
  int overflow = 0;
  tree t;
  HOST_WIDE_INT high, low;
  REAL_VALUE_TYPE r;
  REAL_VALUE_TYPE x = TREE_REAL_CST (arg1);

  switch (code)
    {
    case 128:
      real_trunc (&r, VOIDmode, &x);
      break;

    case 131:
      real_ceil (&r, VOIDmode, &x);
      break;

    case 130:
      real_floor (&r, VOIDmode, &x);
      break;

    case 129:
      real_round (&r, VOIDmode, &x);
      break;

    default:
      gcc_unreachable ();
    }


  if (REAL_VALUE_ISNAN (r))
    {
      overflow = 1;
      high = 0;
      low = 0;
    }




  if (! overflow)
    {
      tree lt = TYPE_MIN_VALUE (type);
      REAL_VALUE_TYPE l = real_value_from_int_cst (NULL_TREE, lt);
      if (REAL_VALUES_LESS (r, l))
 {
   overflow = 1;
   high = TREE_INT_CST_HIGH (lt);
   low = TREE_INT_CST_LOW (lt);
 }
    }

  if (! overflow)
    {
      tree ut = TYPE_MAX_VALUE (type);
      if (ut)
 {
   REAL_VALUE_TYPE u = real_value_from_int_cst (NULL_TREE, ut);
   if (REAL_VALUES_LESS (u, r))
     {
       overflow = 1;
       high = TREE_INT_CST_HIGH (ut);
       low = TREE_INT_CST_LOW (ut);
     }
 }
    }

  if (! overflow)
    REAL_VALUE_TO_INT (&low, &high, r);

  t = build_int_cst_wide (type, low, high);

  t = force_fit_type (t, -1, overflow | TREE_OVERFLOW (arg1),
        TREE_CONSTANT_OVERFLOW (arg1));
  return t;
}
