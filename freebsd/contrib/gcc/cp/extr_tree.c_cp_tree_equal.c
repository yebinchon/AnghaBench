
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;
typedef enum tree_code { ____Placeholder_tree_code } tree_code ;




 int BASELINK_ACCESS_BINFO (scalar_t__) ;
 int BASELINK_BINFO (scalar_t__) ;
 scalar_t__ BASELINK_FUNCTIONS (scalar_t__) ;





 int CONVERT_EXPR ;
 int DECL_NAME (scalar_t__) ;
 int DECL_RTL_SET_P (scalar_t__) ;



 int NON_LVALUE_EXPR ;
 int NOP_EXPR ;
 int NULL_TREE ;

 scalar_t__ OVL_CHAIN (scalar_t__) ;
 int OVL_FUNCTION (scalar_t__) ;


 scalar_t__ PTRMEM_CST_CLASS (scalar_t__) ;
 int PTRMEM_CST_MEMBER (scalar_t__) ;

 int REAL_VALUES_EQUAL (int ,int ) ;







 scalar_t__ TEMPLATE_PARM_DECL (scalar_t__) ;
 int TEMPLATE_PARM_IDX (scalar_t__) ;

 int TEMPLATE_PARM_LEVEL (scalar_t__) ;
 scalar_t__ TREE_CHAIN (scalar_t__) ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 int TREE_CODE_CLASS (int) ;
 int TREE_CODE_LENGTH (int) ;
 scalar_t__ TREE_IMAGPART (scalar_t__) ;
 int TREE_INT_CST_HIGH (scalar_t__) ;
 int TREE_INT_CST_LOW (scalar_t__) ;

 scalar_t__ TREE_OPERAND (scalar_t__,int) ;
 scalar_t__ TREE_PURPOSE (scalar_t__) ;
 scalar_t__ TREE_REALPART (scalar_t__) ;
 int TREE_REAL_CST (scalar_t__) ;
 int TREE_STRING_LENGTH (scalar_t__) ;
 int TREE_STRING_POINTER (scalar_t__) ;
 scalar_t__ TREE_TYPE (scalar_t__) ;
 scalar_t__ TREE_VALUE (scalar_t__) ;
 scalar_t__ TREE_VEC_ELT (scalar_t__,unsigned int) ;
 unsigned int TREE_VEC_LENGTH (scalar_t__) ;
 int TYPE_P (scalar_t__) ;


 int gcc_unreachable () ;
 int memcmp (int ,int ,int ) ;
 int same_type_p (scalar_t__,scalar_t__) ;
bool
cp_tree_equal (tree t1, tree t2)
{
  enum tree_code code1, code2;

  if (t1 == t2)
    return 1;
  if (!t1 || !t2)
    return 0;

  for (code1 = TREE_CODE (t1);
       code1 == NOP_EXPR || code1 == CONVERT_EXPR
  || code1 == NON_LVALUE_EXPR;
       code1 = TREE_CODE (t1))
    t1 = TREE_OPERAND (t1, 0);
  for (code2 = TREE_CODE (t2);
       code2 == NOP_EXPR || code2 == CONVERT_EXPR
  || code1 == NON_LVALUE_EXPR;
       code2 = TREE_CODE (t2))
    t2 = TREE_OPERAND (t2, 0);


  if (t1 == t2)
    return 1;

  if (code1 != code2)
    return 0;

  switch (code1)
    {
    case 150:
      return TREE_INT_CST_LOW (t1) == TREE_INT_CST_LOW (t2)
 && TREE_INT_CST_HIGH (t1) == TREE_INT_CST_HIGH (t2);

    case 146:
      return REAL_VALUES_EQUAL (TREE_REAL_CST (t1), TREE_REAL_CST (t2));

    case 142:
      return TREE_STRING_LENGTH (t1) == TREE_STRING_LENGTH (t2)
 && !memcmp (TREE_STRING_POINTER (t1), TREE_STRING_POINTER (t2),
      TREE_STRING_LENGTH (t1));

    case 156:
      return cp_tree_equal (TREE_REALPART (t1), TREE_REALPART (t2))
 && cp_tree_equal (TREE_IMAGPART (t1), TREE_IMAGPART (t2));

    case 154:



      if (!(same_type_p (TREE_TYPE (t1), TREE_TYPE (t2))

     && TREE_OPERAND (t1, 0) == TREE_OPERAND (t2, 0)))
 return 0;
      return cp_tree_equal (TREE_OPERAND (t1, 1), TREE_OPERAND (t2, 1));

    case 137:
      if (!cp_tree_equal (TREE_PURPOSE (t1), TREE_PURPOSE (t2)))
 return 0;
      if (!cp_tree_equal (TREE_VALUE (t1), TREE_VALUE (t2)))
 return 0;
      return cp_tree_equal (TREE_CHAIN (t1), TREE_CHAIN (t2));

    case 145:
      return cp_tree_equal (TREE_OPERAND (t1, 0), TREE_OPERAND (t2, 0));

    case 157:
      if (!cp_tree_equal (TREE_OPERAND (t1, 0), TREE_OPERAND (t2, 0)))
 return 0;
      return cp_tree_equal (TREE_OPERAND (t1, 1), TREE_OPERAND (t2, 1));

    case 141:
      {
 tree o1 = TREE_OPERAND (t1, 0);
 tree o2 = TREE_OPERAND (t2, 0);





 if (TREE_CODE (o1) == 136 && DECL_NAME (o1) == NULL_TREE
     && !DECL_RTL_SET_P (o1))
          ;
 else if (TREE_CODE (o2) == 136 && DECL_NAME (o2) == NULL_TREE
   && !DECL_RTL_SET_P (o2))
          ;
 else if (!cp_tree_equal (o1, o2))
   return 0;

 return cp_tree_equal (TREE_OPERAND (t1, 1), TREE_OPERAND (t2, 1));
      }

    case 135:
      if (!cp_tree_equal (TREE_OPERAND (t1, 0), TREE_OPERAND (t2, 0)))
 return 0;
      return cp_tree_equal (TREE_OPERAND (t1, 1), TREE_OPERAND (t1, 1));

    case 155:
      if (TREE_OPERAND (t1, 1) != TREE_OPERAND (t2, 1))
 return 0;
      return cp_tree_equal (TREE_OPERAND (t1, 0), TREE_OPERAND (t2, 0));

    case 136:
    case 148:
    case 153:
    case 152:
    case 140:
    case 151:
    case 143:
      return 0;

    case 158:
      return (BASELINK_BINFO (t1) == BASELINK_BINFO (t2)
       && BASELINK_ACCESS_BINFO (t1) == BASELINK_ACCESS_BINFO (t2)
       && cp_tree_equal (BASELINK_FUNCTIONS (t1),
    BASELINK_FUNCTIONS (t2)));

    case 138:
      return (TEMPLATE_PARM_IDX (t1) == TEMPLATE_PARM_IDX (t2)
       && TEMPLATE_PARM_LEVEL (t1) == TEMPLATE_PARM_LEVEL (t2)
       && same_type_p (TREE_TYPE (TEMPLATE_PARM_DECL (t1)),
         TREE_TYPE (TEMPLATE_PARM_DECL (t2))));

    case 139:
      {
 unsigned ix;
 tree vec1, vec2;

 if (!cp_tree_equal (TREE_OPERAND (t1, 0), TREE_OPERAND (t2, 0)))
   return 0;
 vec1 = TREE_OPERAND (t1, 1);
 vec2 = TREE_OPERAND (t2, 1);

 if (!vec1 || !vec2)
   return !vec1 && !vec2;

 if (TREE_VEC_LENGTH (vec1) != TREE_VEC_LENGTH (vec2))
   return 0;

 for (ix = TREE_VEC_LENGTH (vec1); ix--;)
   if (!cp_tree_equal (TREE_VEC_ELT (vec1, ix),
         TREE_VEC_ELT (vec2, ix)))
     return 0;

 return 1;
      }

    case 144:
    case 159:
      {
 tree o1 = TREE_OPERAND (t1, 0);
 tree o2 = TREE_OPERAND (t2, 0);

 if (TREE_CODE (o1) != TREE_CODE (o2))
   return 0;
 if (TYPE_P (o1))
   return same_type_p (o1, o2);
 else
   return cp_tree_equal (o1, o2);
      }

    case 147:


      if (PTRMEM_CST_MEMBER (t1) != PTRMEM_CST_MEMBER (t2))
 return 0;

      return same_type_p (PTRMEM_CST_CLASS (t1), PTRMEM_CST_CLASS (t2));

    case 149:
      if (OVL_FUNCTION (t1) != OVL_FUNCTION (t2))
 return 0;
      return cp_tree_equal (OVL_CHAIN (t1), OVL_CHAIN (t2));

    default:
      break;
    }

  switch (TREE_CODE_CLASS (code1))
    {
    case 128:
    case 134:
    case 133:
    case 132:
    case 131:
    case 130:
      {
 int i;

 for (i = 0; i < TREE_CODE_LENGTH (code1); ++i)
   if (!cp_tree_equal (TREE_OPERAND (t1, i), TREE_OPERAND (t2, i)))
     return 0;

 return 1;
      }

    case 129:
      return same_type_p (t1, t2);
    default:
      gcc_unreachable ();
    }

  return 0;
}
