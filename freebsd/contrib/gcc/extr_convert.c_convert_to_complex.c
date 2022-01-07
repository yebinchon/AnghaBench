
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;



 int COMPLEX_EXPR ;


 int IMAGPART_EXPR ;


 int REALPART_EXPR ;


 int TREE_CODE (int ) ;
 int TREE_OPERAND (int ,int) ;
 int TREE_TYPE (int ) ;
 int TYPE_MAIN_VARIANT (int ) ;
 int build2 (int,int ,int ,int ) ;
 int convert (int ,int ) ;
 int error (char*) ;
 int fold_build1 (int ,int ,int ) ;
 int fold_build2 (int,int ,int ,int ) ;
 int integer_zero_node ;
 int save_expr (int ) ;

tree
convert_to_complex (tree type, tree expr)
{
  tree subtype = TREE_TYPE (type);

  switch (TREE_CODE (TREE_TYPE (expr)))
    {
    case 129:
    case 131:
    case 132:
    case 134:
      return build2 (COMPLEX_EXPR, type, convert (subtype, expr),
       convert (subtype, integer_zero_node));

    case 133:
      {
 tree elt_type = TREE_TYPE (TREE_TYPE (expr));

 if (TYPE_MAIN_VARIANT (elt_type) == TYPE_MAIN_VARIANT (subtype))
   return expr;
 else if (TREE_CODE (expr) == COMPLEX_EXPR)
   return fold_build2 (COMPLEX_EXPR, type,
         convert (subtype, TREE_OPERAND (expr, 0)),
         convert (subtype, TREE_OPERAND (expr, 1)));
 else
   {
     expr = save_expr (expr);
     return
       fold_build2 (COMPLEX_EXPR, type,
      convert (subtype,
        fold_build1 (REALPART_EXPR,
       TREE_TYPE (TREE_TYPE (expr)),
       expr)),
      convert (subtype,
        fold_build1 (IMAGPART_EXPR,
       TREE_TYPE (TREE_TYPE (expr)),
       expr)));
   }
      }

    case 130:
    case 128:
      error ("pointer value used where a complex was expected");
      return convert_to_complex (type, integer_zero_node);

    default:
      error ("aggregate value used where a complex was expected");
      return convert_to_complex (type, integer_zero_node);
    }
}
