
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int tree ;
struct TYPE_2__ {int type; scalar_t__ hidden; } ;


 int current_class_depth ;
 TYPE_1__* current_class_stack ;
 int current_class_type ;
 scalar_t__ same_type_p (int ,int ) ;

bool
currently_open_class (tree t)
{
  int i;



  for (i = current_class_depth; i > 0; --i)
    {
      tree c;
      if (i == current_class_depth)
 c = current_class_type;
      else
 {
   if (current_class_stack[i].hidden)
     break;
   c = current_class_stack[i].type;
 }
      if (!c)
 continue;
      if (same_type_p (c, t))
 return 1;
    }
  return 0;
}
