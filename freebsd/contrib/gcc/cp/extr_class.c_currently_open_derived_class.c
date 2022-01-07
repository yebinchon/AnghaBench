
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int tree ;
struct TYPE_2__ {int type; scalar_t__ hidden; } ;


 scalar_t__ DERIVED_FROM_P (int ,int ) ;
 int NULL_TREE ;
 int current_class_depth ;
 TYPE_1__* current_class_stack ;
 int current_class_type ;
 scalar_t__ dependent_type_p (int ) ;

tree
currently_open_derived_class (tree t)
{
  int i;


  if (dependent_type_p (t))
    return NULL_TREE;

  if (!current_class_type)
    return NULL_TREE;

  if (DERIVED_FROM_P (t, current_class_type))
    return current_class_type;

  for (i = current_class_depth - 1; i > 0; --i)
    {
      if (current_class_stack[i].hidden)
 break;
      if (DERIVED_FROM_P (t, current_class_stack[i].type))
 return current_class_stack[i].type;
    }

  return NULL_TREE;
}
