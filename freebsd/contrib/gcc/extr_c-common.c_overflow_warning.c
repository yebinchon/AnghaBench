
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;




 int OPT_Woverflow ;

 int const TREE_CODE (int ) ;
 int TREE_REALPART (int ) ;

 scalar_t__ skip_evaluation ;
 int warning (int ,char*) ;

void
overflow_warning (tree value)
{
  if (skip_evaluation) return;

  switch (TREE_CODE (value))
    {
    case 130:
      warning (OPT_Woverflow, "integer overflow in expression");
      break;

    case 129:
      warning (OPT_Woverflow, "floating point overflow in expression");
      break;

    case 128:
      warning (OPT_Woverflow, "vector overflow in expression");
      break;

    case 131:
      if (TREE_CODE (TREE_REALPART (value)) == 130)
 warning (OPT_Woverflow, "complex integer overflow in expression");
      else if (TREE_CODE (TREE_REALPART (value)) == 129)
 warning (OPT_Woverflow, "complex floating point overflow in expression");
      break;

    default:
      break;
    }
}
