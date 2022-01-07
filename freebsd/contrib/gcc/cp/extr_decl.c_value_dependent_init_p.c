
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int tree ;
struct TYPE_2__ {int value; } ;


 scalar_t__ CONSTRUCTOR ;
 int CONSTRUCTOR_ELTS (int ) ;
 scalar_t__ TREE_CODE (int ) ;
 scalar_t__ TREE_LIST ;
 int VEC (int ,int ) ;
 TYPE_1__* VEC_index (int ,int,size_t) ;
 size_t VEC_length (int ,int) ;
 int any_value_dependent_elements_p (int ) ;
 int constructor_elt ;
 int elts ;
 int gc ;
 int value_dependent_expression_p (int ) ;

__attribute__((used)) static bool
value_dependent_init_p (tree init)
{
  if (TREE_CODE (init) == TREE_LIST)

    return any_value_dependent_elements_p (init);
  else if (TREE_CODE (init) == CONSTRUCTOR)

    {
      VEC(constructor_elt, gc) *elts;
      size_t nelts;
      size_t i;

      elts = CONSTRUCTOR_ELTS (init);
      nelts = VEC_length (constructor_elt, elts);
      for (i = 0; i < nelts; ++i)
 if (value_dependent_init_p (VEC_index (constructor_elt,
            elts, i)->value))
   return 1;
    }
  else

    return value_dependent_expression_p (init);

  return 0;
}
