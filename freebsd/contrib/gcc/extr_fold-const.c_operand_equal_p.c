
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;
typedef enum tree_code { ____Placeholder_tree_code } tree_code ;
 scalar_t__ COMPARISON_CLASS_P (scalar_t__) ;



 int DECL_BUILT_IN (scalar_t__) ;
 int DECL_BUILT_IN_CLASS (scalar_t__) ;
 int DECL_FUNCTION_CODE (scalar_t__) ;
 unsigned int ECF_CONST ;
 unsigned int ECF_PURE ;
 int ERROR_MARK ;




 int FUNCTION_DECL ;





 unsigned int OEP_ONLY_CONST ;
 unsigned int OEP_PURE_SAME ;
 int OP_SAME (int) ;
 int OP_SAME_WITH_NULL (int) ;


 int REAL_VALUES_IDENTICAL (int ,int ) ;
 int SAVE_EXPR ;

 int STRIP_NOPS (scalar_t__) ;
 scalar_t__ TREE_CHAIN (scalar_t__) ;
 int TREE_CODE (scalar_t__) ;
 int TREE_CODE_CLASS (int) ;
 scalar_t__ TREE_CONSTANT (scalar_t__) ;
 int TREE_CONSTANT_OVERFLOW (scalar_t__) ;
 scalar_t__ TREE_IMAGPART (scalar_t__) ;
 scalar_t__ TREE_OPERAND (scalar_t__,int) ;
 scalar_t__ TREE_REALPART (scalar_t__) ;
 int TREE_REAL_CST (scalar_t__) ;
 scalar_t__ TREE_SIDE_EFFECTS (scalar_t__) ;
 int TREE_STRING_LENGTH (scalar_t__) ;
 int TREE_STRING_POINTER (scalar_t__) ;
 scalar_t__ TREE_TYPE (scalar_t__) ;
 scalar_t__ TREE_VALUE (scalar_t__) ;
 scalar_t__ TREE_VECTOR_CST_ELTS (scalar_t__) ;






 scalar_t__ TYPE_MODE (scalar_t__) ;
 scalar_t__ TYPE_PRECISION (scalar_t__) ;
 scalar_t__ TYPE_UNSIGNED (scalar_t__) ;

 unsigned int call_expr_flags (scalar_t__) ;
 int commutative_tree_code (int) ;
 int memcmp (int ,int ,int ) ;
 int swap_tree_comparison (int) ;






 int tree_int_cst_equal (scalar_t__,scalar_t__) ;

int
operand_equal_p (tree arg0, tree arg1, unsigned int flags)
{

  if (TREE_CODE (arg0) == ERROR_MARK || TREE_CODE (arg1) == ERROR_MARK)
    return 0;




  if (TYPE_UNSIGNED (TREE_TYPE (arg0)) != TYPE_UNSIGNED (TREE_TYPE (arg1)))
    return 0;



  if (TYPE_PRECISION (TREE_TYPE (arg0)) != TYPE_PRECISION (TREE_TYPE (arg1)))
    return 0;

  STRIP_NOPS (arg0);
  STRIP_NOPS (arg1);




  if (TREE_CODE (arg0) != TREE_CODE (arg1)
      && COMPARISON_CLASS_P (arg0)
      && COMPARISON_CLASS_P (arg1))
    {
      enum tree_code swap_code = swap_tree_comparison (TREE_CODE (arg1));

      if (TREE_CODE (arg0) == swap_code)
 return operand_equal_p (TREE_OPERAND (arg0, 0),
           TREE_OPERAND (arg1, 1), flags)
        && operand_equal_p (TREE_OPERAND (arg0, 1),
       TREE_OPERAND (arg1, 0), flags);
    }

  if (TREE_CODE (arg0) != TREE_CODE (arg1)


      || TREE_CODE (TREE_TYPE (arg0)) == ERROR_MARK
      || TREE_CODE (TREE_TYPE (arg1)) == ERROR_MARK
      || TYPE_MODE (TREE_TYPE (arg0)) != TYPE_MODE (TREE_TYPE (arg1)))
    return 0;
  if (arg0 == arg1 && ! (flags & OEP_ONLY_CONST)
      && (TREE_CODE (arg0) == SAVE_EXPR
   || (! TREE_SIDE_EFFECTS (arg0) && ! TREE_SIDE_EFFECTS (arg1))))
    return 1;



  if (TREE_CONSTANT (arg0) && TREE_CONSTANT (arg1))
    switch (TREE_CODE (arg0))
      {
      case 146:
 return (! TREE_CONSTANT_OVERFLOW (arg0)
  && ! TREE_CONSTANT_OVERFLOW (arg1)
  && tree_int_cst_equal (arg0, arg1));

      case 142:
 return (! TREE_CONSTANT_OVERFLOW (arg0)
  && ! TREE_CONSTANT_OVERFLOW (arg1)
  && REAL_VALUES_IDENTICAL (TREE_REAL_CST (arg0),
       TREE_REAL_CST (arg1)));

      case 134:
 {
   tree v1, v2;

   if (TREE_CONSTANT_OVERFLOW (arg0)
       || TREE_CONSTANT_OVERFLOW (arg1))
     return 0;

   v1 = TREE_VECTOR_CST_ELTS (arg0);
   v2 = TREE_VECTOR_CST_ELTS (arg1);
   while (v1 && v2)
     {
       if (!operand_equal_p (TREE_VALUE (v1), TREE_VALUE (v2),
        flags))
  return 0;
       v1 = TREE_CHAIN (v1);
       v2 = TREE_CHAIN (v2);
     }

   return v1 == v2;
 }

      case 155:
 return (operand_equal_p (TREE_REALPART (arg0), TREE_REALPART (arg1),
     flags)
  && operand_equal_p (TREE_IMAGPART (arg0), TREE_IMAGPART (arg1),
        flags));

      case 141:
 return (TREE_STRING_LENGTH (arg0) == TREE_STRING_LENGTH (arg1)
  && ! memcmp (TREE_STRING_POINTER (arg0),
         TREE_STRING_POINTER (arg1),
         TREE_STRING_LENGTH (arg0)));

      case 161:
 return operand_equal_p (TREE_OPERAND (arg0, 0), TREE_OPERAND (arg1, 0),
    0);
      default:
 break;
      }

  if (flags & OEP_ONLY_CONST)
    return 0;
  switch (TREE_CODE_CLASS (TREE_CODE (arg0)))
    {
    case 128:

      switch (TREE_CODE (arg0))
        {
        case 144:
        case 153:
        case 152:
        case 149:
        case 151:
        case 150:
   if (TYPE_UNSIGNED (TREE_TYPE (arg0))
       != TYPE_UNSIGNED (TREE_TYPE (arg1)))
     return 0;
   break;
 default:
   break;
 }

      return operand_equal_p (TREE_OPERAND (arg0, 0), TREE_OPERAND (arg1, 0), flags);


    case 132:
    case 133:
      if (operand_equal_p (TREE_OPERAND (arg0, 0), TREE_OPERAND (arg1, 0), flags) && operand_equal_p (TREE_OPERAND (arg0, 1), TREE_OPERAND (arg1, 1), flags))
 return 1;


      return (commutative_tree_code (TREE_CODE (arg0))
       && operand_equal_p (TREE_OPERAND (arg0, 0),
      TREE_OPERAND (arg1, 1), flags)
       && operand_equal_p (TREE_OPERAND (arg0, 1),
      TREE_OPERAND (arg1, 0), flags));

    case 129:


      if (TREE_SIDE_EFFECTS (arg0)
   || TREE_SIDE_EFFECTS (arg1))
 return 0;

      switch (TREE_CODE (arg0))
 {
 case 147:
 case 160:
 case 145:
 case 143:
 case 148:
   return operand_equal_p (TREE_OPERAND (arg0, 0), TREE_OPERAND (arg1, 0), flags);

 case 158:
 case 159:



   return (operand_equal_p (TREE_OPERAND (arg0, 0), TREE_OPERAND (arg1, 0), flags)
    && (tree_int_cst_equal (TREE_OPERAND (arg0, 1),
       TREE_OPERAND (arg1, 1))
        || operand_equal_p (TREE_OPERAND (arg0, 1), TREE_OPERAND (arg1, 1), flags))
    && ((!TREE_OPERAND (arg0, 2) || !TREE_OPERAND (arg1, 2)) ? TREE_OPERAND (arg0, 2) == TREE_OPERAND (arg1, 2) : operand_equal_p (TREE_OPERAND (arg0, 2), TREE_OPERAND (arg1, 2), flags))
    && ((!TREE_OPERAND (arg0, 3) || !TREE_OPERAND (arg1, 3)) ? TREE_OPERAND (arg0, 3) == TREE_OPERAND (arg1, 3) : operand_equal_p (TREE_OPERAND (arg0, 3), TREE_OPERAND (arg1, 3), flags)));

 case 154:


   return ((!TREE_OPERAND (arg0, 0) || !TREE_OPERAND (arg1, 0)) ? TREE_OPERAND (arg0, 0) == TREE_OPERAND (arg1, 0) : operand_equal_p (TREE_OPERAND (arg0, 0), TREE_OPERAND (arg1, 0), flags))
   && operand_equal_p (TREE_OPERAND (arg0, 1), TREE_OPERAND (arg1, 1), flags)
   && ((!TREE_OPERAND (arg0, 2) || !TREE_OPERAND (arg1, 2)) ? TREE_OPERAND (arg0, 2) == TREE_OPERAND (arg1, 2) : operand_equal_p (TREE_OPERAND (arg0, 2), TREE_OPERAND (arg1, 2), flags));

 case 157:
   return operand_equal_p (TREE_OPERAND (arg0, 0), TREE_OPERAND (arg1, 0), flags) && operand_equal_p (TREE_OPERAND (arg0, 1), TREE_OPERAND (arg1, 1), flags) && operand_equal_p (TREE_OPERAND (arg0, 2), TREE_OPERAND (arg1, 2), flags);

 default:
   return 0;
 }

    case 130:
      switch (TREE_CODE (arg0))
 {
 case 161:
 case 138:
   return operand_equal_p (TREE_OPERAND (arg0, 0), TREE_OPERAND (arg1, 0), flags);

 case 140:
 case 137:
   return operand_equal_p (TREE_OPERAND (arg0, 0), TREE_OPERAND (arg1, 0), flags) && operand_equal_p (TREE_OPERAND (arg0, 1), TREE_OPERAND (arg1, 1), flags);

 case 139:
 case 136:
 case 135:
   if (operand_equal_p (TREE_OPERAND (arg0, 0), TREE_OPERAND (arg1, 0), flags) && operand_equal_p (TREE_OPERAND (arg0, 1), TREE_OPERAND (arg1, 1), flags))
     return 1;


   return (operand_equal_p (TREE_OPERAND (arg0, 0),
       TREE_OPERAND (arg1, 1), flags)
    && operand_equal_p (TREE_OPERAND (arg0, 1),
          TREE_OPERAND (arg1, 0), flags));

 case 156:


   if (!operand_equal_p (TREE_OPERAND (arg0, 0), TREE_OPERAND (arg1, 0), flags))
     return 0;

   {
     unsigned int cef = call_expr_flags (arg0);
     if (flags & OEP_PURE_SAME)
       cef &= ECF_CONST | ECF_PURE;
     else
       cef &= ECF_CONST;
     if (!cef)
       return 0;
   }




   arg0 = TREE_OPERAND (arg0, 1);
   arg1 = TREE_OPERAND (arg1, 1);
   while (arg0 && arg1)
     {
       if (! operand_equal_p (TREE_VALUE (arg0), TREE_VALUE (arg1),
         flags))
  return 0;

       arg0 = TREE_CHAIN (arg0);
       arg1 = TREE_CHAIN (arg1);
     }



   return ! (arg0 || arg1);

 default:
   return 0;
 }

    case 131:

      return (TREE_CODE (arg0) == FUNCTION_DECL
       && DECL_BUILT_IN (arg0) && DECL_BUILT_IN (arg1)
       && DECL_BUILT_IN_CLASS (arg0) == DECL_BUILT_IN_CLASS (arg1)
       && DECL_FUNCTION_CODE (arg0) == DECL_FUNCTION_CODE (arg1));

    default:
      return 0;
    }



}
