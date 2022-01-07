
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef enum tree_code { ____Placeholder_tree_code } tree_code ;
typedef int c_pretty_printer ;



 int COMPLEX_CST ;
 int COMPLEX_EXPR ;

 int CONSTRUCTOR ;
 int CONSTRUCTOR_ELTS (int ) ;
 int NULL_TREE ;

 int TREE_CHAIN (int ) ;
 int TREE_CODE (int ) ;
 int TREE_IMAGPART (int ) ;
 int TREE_OPERAND (int ,int) ;
 int TREE_PURPOSE (int ) ;
 int TREE_REALPART (int ) ;
 int TREE_TYPE (int ) ;
 int TREE_VALUE (int ) ;
 int TREE_VECTOR_CST_ELTS (int ) ;

 int VECTOR_CST ;

 int pp_c_constant (int *,int ) ;
 int pp_c_constructor_elts (int *,int ) ;
 int pp_c_dot (int *) ;
 int pp_c_expression_list (int *,int ) ;
 int pp_c_left_bracket (int *) ;
 int pp_c_primary_expression (int *,int ) ;
 int pp_c_right_bracket (int *) ;
 int pp_c_whitespace (int *) ;
 int pp_equal (int *) ;
 int pp_expression (int *,int ) ;
 int pp_initializer (int *,int ) ;
 int pp_separate_with (int *,char) ;
 int pp_unsupported_tree (int *,int ) ;

__attribute__((used)) static void
pp_c_initializer_list (c_pretty_printer *pp, tree e)
{
  tree type = TREE_TYPE (e);
  const enum tree_code code = TREE_CODE (type);

  switch (code)
    {
    case 130:
    case 129:
    case 132:
      {
 tree init = TREE_OPERAND (e, 0);
 for (; init != NULL_TREE; init = TREE_CHAIN (init))
   {
     if (code == 130 || code == 129)
       {
  pp_c_dot (pp);
  pp_c_primary_expression (pp, TREE_PURPOSE (init));
       }
     else
       {
  pp_c_left_bracket (pp);
  if (TREE_PURPOSE (init))
    pp_c_constant (pp, TREE_PURPOSE (init));
  pp_c_right_bracket (pp);
       }
     pp_c_whitespace (pp);
     pp_equal (pp);
     pp_c_whitespace (pp);
     pp_initializer (pp, TREE_VALUE (init));
     if (TREE_CHAIN (init))
       pp_separate_with (pp, ',');
   }
      }
      return;

    case 128:
      if (TREE_CODE (e) == VECTOR_CST)
 pp_c_expression_list (pp, TREE_VECTOR_CST_ELTS (e));
      else if (TREE_CODE (e) == CONSTRUCTOR)
 pp_c_constructor_elts (pp, CONSTRUCTOR_ELTS (e));
      else
 break;
      return;

    case 131:
      if (TREE_CODE (e) == CONSTRUCTOR)
 pp_c_constructor_elts (pp, CONSTRUCTOR_ELTS (e));
      else if (TREE_CODE (e) == COMPLEX_CST || TREE_CODE (e) == COMPLEX_EXPR)
 {
   const bool cst = TREE_CODE (e) == COMPLEX_CST;
   pp_expression (pp, cst ? TREE_REALPART (e) : TREE_OPERAND (e, 0));
   pp_separate_with (pp, ',');
   pp_expression (pp, cst ? TREE_IMAGPART (e) : TREE_OPERAND (e, 1));
 }
      else
 break;
      return;

    default:
      break;
    }

  pp_unsupported_tree (pp, type);
}
