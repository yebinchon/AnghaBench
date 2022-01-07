
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 scalar_t__ EXPRESSION_CLASS_P (scalar_t__) ;
 int TEST_CHILD (int) ;
 int TREE_CODE (scalar_t__) ;
 int TREE_CODE_LENGTH (int ) ;

__attribute__((used)) static int
TB_parent_eq (const void *p1, const void *p2)
{
  tree node, parent;
  node = (tree) p2;
  parent = (tree) p1;

  if (p1 == ((void*)0) || p2 == ((void*)0))
    return 0;

  if (EXPRESSION_CLASS_P (parent))
    {






    switch (TREE_CODE_LENGTH (TREE_CODE (parent)))
      {
      case 4:
 do { if (node == TREE_OPERAND (parent, 0)) return 1; } while (0);
 do { if (node == TREE_OPERAND (parent, 1)) return 1; } while (0);
 do { if (node == TREE_OPERAND (parent, 2)) return 1; } while (0);
 do { if (node == TREE_OPERAND (parent, 3)) return 1; } while (0);
 break;

      case 3:
 do { if (node == TREE_OPERAND (parent, 0)) return 1; } while (0);
 do { if (node == TREE_OPERAND (parent, 1)) return 1; } while (0);
 do { if (node == TREE_OPERAND (parent, 2)) return 1; } while (0);
 break;

      case 2:
 do { if (node == TREE_OPERAND (parent, 0)) return 1; } while (0);
 do { if (node == TREE_OPERAND (parent, 1)) return 1; } while (0);
 break;

      case 1:
 do { if (node == TREE_OPERAND (parent, 0)) return 1; } while (0);
 break;

      case 0:
      default:

 break;
      }

    }

  return 0;
}
