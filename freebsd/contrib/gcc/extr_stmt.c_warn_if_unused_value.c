
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef int location_t ;



 int BIND_EXPR_BODY (int ) ;



 int DECL_P (int ) ;

 int EXPRESSION_CLASS_P (int ) ;
 scalar_t__ EXPR_HAS_LOCATION (int ) ;
 int EXPR_LOCATION (int ) ;







 int REFERENCE_CLASS_P (int ) ;
 int REFERENCE_TYPE ;


 int TREE_CODE (int ) ;
 int TREE_CODE_LENGTH (int) ;
 int TREE_CONSTANT (int ) ;
 scalar_t__ TREE_NO_WARNING (int ) ;
 int TREE_OPERAND (int ,int) ;
 int TREE_SIDE_EFFECTS (int ) ;
 int TREE_THIS_VOLATILE (int ) ;
 int TREE_TYPE (int ) ;
 scalar_t__ TREE_USED (int ) ;




 scalar_t__ VOID_TYPE_P (int ) ;

 int warning (int ,char*,int *) ;

int
warn_if_unused_value (tree exp, location_t locus)
{
 restart:
  if (TREE_USED (exp) || TREE_NO_WARNING (exp))
    return 0;




  if (VOID_TYPE_P (TREE_TYPE (exp)))
    return 0;

  if (EXPR_HAS_LOCATION (exp))
    locus = EXPR_LOCATION (exp);

  switch (TREE_CODE (exp))
    {
    case 135:
    case 137:
    case 136:
    case 138:
    case 139:
    case 140:
    case 133:
    case 145:
    case 130:
    case 128:
    case 142:
    case 129:
      return 0;

    case 146:

      exp = BIND_EXPR_BODY (exp);
      goto restart;

    case 134:
      exp = TREE_OPERAND (exp, 0);
      goto restart;

    case 131:
    case 132:

      exp = TREE_OPERAND (exp, 1);
      goto restart;

    case 144:
      if (warn_if_unused_value (TREE_OPERAND (exp, 0), locus))
 return 1;

      if (TREE_CONSTANT (TREE_OPERAND (exp, 1)))
 return 0;
      exp = TREE_OPERAND (exp, 1);
      goto restart;

    case 143:


      if (TREE_SIDE_EFFECTS (exp))
 return 0;
      goto warn;

    case 141:


      if (TREE_CODE (TREE_TYPE (TREE_OPERAND (exp, 0))) == REFERENCE_TYPE)
 {
   exp = TREE_OPERAND (exp, 0);
   goto restart;
 }


    default:

      if ((DECL_P (exp) || REFERENCE_CLASS_P (exp))
   && TREE_THIS_VOLATILE (exp))
 return 0;




      if (EXPRESSION_CLASS_P (exp) && TREE_CODE_LENGTH (TREE_CODE (exp)) == 0)
 return 0;

    warn:
      warning (0, "%Hvalue computed is not used", &locus);
      return 1;
    }
}
