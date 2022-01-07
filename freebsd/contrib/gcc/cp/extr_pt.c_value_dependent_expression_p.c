
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
 int DECL_INITIAL (int ) ;
 scalar_t__ DECL_P (int ) ;
 int DECL_TEMPLATE_PARM_P (int ) ;


 int INTEGRAL_OR_ENUMERATION_TYPE_P (int ) ;






 int TREE_CODE (int ) ;
 int TREE_CODE_CLASS (int) ;
 int TREE_CODE_LENGTH (int) ;
 int TREE_LIST ;
 int TREE_OPERAND (int ,int) ;
 int TREE_TYPE (int ) ;
 int TYPE_P (int ) ;

 int any_value_dependent_elements_p (int ) ;
 int dependent_scope_ref_p (int ,int (*) (int )) ;
 int dependent_type_p (int ) ;
 int gcc_assert (int ) ;
 int processing_template_decl ;





 int type_dependent_expression_p (int ) ;

bool
value_dependent_expression_p (tree expression)
{
  if (!processing_template_decl)
    return 0;


  if (DECL_P (expression) && type_dependent_expression_p (expression))
    return 1;

  switch (TREE_CODE (expression))
    {
    case 140:

      return 1;

    case 134:

      return 1;

    case 142:

      if (DECL_TEMPLATE_PARM_P (expression))
 return 1;
      return 0;

    case 133:


      if (DECL_INITIAL (expression)
   && INTEGRAL_OR_ENUMERATION_TYPE_P (TREE_TYPE (expression))
   && value_dependent_expression_p (DECL_INITIAL (expression)))
 return 1;
      return 0;

    case 141:
    case 135:
    case 143:
    case 138:
    case 145:



      {
 tree type = TREE_TYPE (expression);

 if (dependent_type_p (type))
   return 1;


 expression = TREE_OPERAND (expression, 0);
 if (!expression)
   {



     gcc_assert (INTEGRAL_OR_ENUMERATION_TYPE_P (type));

     return 0;
   }

 if (TREE_CODE (expression) == TREE_LIST)
   return any_value_dependent_elements_p (expression);

 return value_dependent_expression_p (expression);
      }

    case 136:
    case 147:


      expression = TREE_OPERAND (expression, 0);
      if (TYPE_P (expression))
 return dependent_type_p (expression);
      return type_dependent_expression_p (expression);

    case 137:
      return dependent_scope_ref_p (expression, value_dependent_expression_p);

    case 144:
      return (value_dependent_expression_p (TREE_OPERAND (expression, 0))
       || value_dependent_expression_p (TREE_OPERAND (expression, 1)));

    case 146:



      return 1;

    case 139:
      return ((value_dependent_expression_p (TREE_OPERAND (expression, 0)))
       || (value_dependent_expression_p (TREE_OPERAND (expression, 2))));

    default:


      switch (TREE_CODE_CLASS (TREE_CODE (expression)))
 {
 case 129:
 case 128:
   return (value_dependent_expression_p
    (TREE_OPERAND (expression, 0)));

 case 131:
 case 132:
   return ((value_dependent_expression_p
     (TREE_OPERAND (expression, 0)))
    || (value_dependent_expression_p
        (TREE_OPERAND (expression, 1))));

 case 130:
   {
     int i;
     for (i = 0; i < TREE_CODE_LENGTH (TREE_CODE (expression)); ++i)




       if (TREE_OPERAND (expression, i)
    && (value_dependent_expression_p
        (TREE_OPERAND (expression, i))))
  return 1;
     return 0;
   }

 default:
   break;
 }
    }


  return 0;
}
