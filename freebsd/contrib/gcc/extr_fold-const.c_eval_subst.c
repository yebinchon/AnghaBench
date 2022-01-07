
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* tree ;
typedef enum tree_code_class { ____Placeholder_tree_code_class } tree_code_class ;
typedef enum tree_code { ____Placeholder_tree_code } tree_code ;





 int TREE_CODE (void*) ;
 int TREE_CODE_CLASS (int) ;
 void* TREE_OPERAND (void*,int) ;
 void* TREE_TYPE (void*) ;
 int TRUTH_ANDIF_EXPR ;
 int TRUTH_NOT_EXPR ;
 int TRUTH_ORIF_EXPR ;
 void* fold_build1 (int,void*,void*) ;
 void* fold_build2 (int,void*,void*,void*) ;
 void* fold_build3 (int,void*,void*,void*,void*) ;
 int operand_equal_p (void*,void*,int ) ;





__attribute__((used)) static tree
eval_subst (tree arg, tree old0, tree new0, tree old1, tree new1)
{
  tree type = TREE_TYPE (arg);
  enum tree_code code = TREE_CODE (arg);
  enum tree_code_class class = TREE_CODE_CLASS (code);


  if (class == 129 && code == TRUTH_NOT_EXPR)
    class = 128;
  else if (class == 129
    && (code == TRUTH_ANDIF_EXPR || code == TRUTH_ORIF_EXPR))
    class = 131;

  switch (class)
    {
    case 128:
      return fold_build1 (code, type,
     eval_subst (TREE_OPERAND (arg, 0),
          old0, new0, old1, new1));

    case 131:
      return fold_build2 (code, type,
     eval_subst (TREE_OPERAND (arg, 0),
          old0, new0, old1, new1),
     eval_subst (TREE_OPERAND (arg, 1),
          old0, new0, old1, new1));

    case 129:
      switch (code)
 {
 case 132:
   return eval_subst (TREE_OPERAND (arg, 0), old0, new0, old1, new1);

 case 134:
   return eval_subst (TREE_OPERAND (arg, 1), old0, new0, old1, new1);

 case 133:
   return fold_build3 (code, type,
         eval_subst (TREE_OPERAND (arg, 0),
       old0, new0, old1, new1),
         eval_subst (TREE_OPERAND (arg, 1),
       old0, new0, old1, new1),
         eval_subst (TREE_OPERAND (arg, 2),
       old0, new0, old1, new1));
 default:
   break;
 }


    case 130:
      {
 tree arg0 = TREE_OPERAND (arg, 0);
 tree arg1 = TREE_OPERAND (arg, 1);





 if (arg0 == old0 || operand_equal_p (arg0, old0, 0))
   arg0 = new0;
 else if (arg0 == old1 || operand_equal_p (arg0, old1, 0))
   arg0 = new1;

 if (arg1 == old0 || operand_equal_p (arg1, old0, 0))
   arg1 = new0;
 else if (arg1 == old1 || operand_equal_p (arg1, old1, 0))
   arg1 = new1;

 return fold_build2 (code, type, arg0, arg1);
      }

    default:
      return arg;
    }
}
