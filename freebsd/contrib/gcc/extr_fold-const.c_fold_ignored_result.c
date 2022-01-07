
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;




 int TREE_CODE (int ) ;
 int TREE_CODE_CLASS (int ) ;
 int TREE_OPERAND (int ,int) ;
 scalar_t__ TREE_SIDE_EFFECTS (int ) ;
 int integer_zero_node ;





tree
fold_ignored_result (tree t)
{
  if (!TREE_SIDE_EFFECTS (t))
    return integer_zero_node;

  for (;;)
    switch (TREE_CODE_CLASS (TREE_CODE (t)))
      {
      case 128:
 t = TREE_OPERAND (t, 0);
 break;

      case 131:
      case 130:
 if (!TREE_SIDE_EFFECTS (TREE_OPERAND (t, 1)))
   t = TREE_OPERAND (t, 0);
 else if (!TREE_SIDE_EFFECTS (TREE_OPERAND (t, 0)))
   t = TREE_OPERAND (t, 1);
 else
   return t;
 break;

      case 129:
 switch (TREE_CODE (t))
   {
   case 133:
     if (TREE_SIDE_EFFECTS (TREE_OPERAND (t, 1)))
       return t;
     t = TREE_OPERAND (t, 0);
     break;

   case 132:
     if (TREE_SIDE_EFFECTS (TREE_OPERAND (t, 1))
  || TREE_SIDE_EFFECTS (TREE_OPERAND (t, 2)))
       return t;
     t = TREE_OPERAND (t, 0);
     break;

   default:
     return t;
   }
 break;

      default:
 return t;
      }
}
