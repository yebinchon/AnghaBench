
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int COMPARE_BASE ;
 int COMPARE_DERIVED ;
 scalar_t__ FUNCTION_TYPE ;
 scalar_t__ INTEGER_TYPE ;
 scalar_t__ OFFSET_TYPE ;
 scalar_t__ POINTER_TYPE ;
 scalar_t__ TREE_CODE (int ) ;
 int TREE_TYPE (int ) ;
 int TYPE_MAIN_VARIANT (int ) ;
 int TYPE_OFFSET_BASETYPE (int ) ;
 scalar_t__ TYPE_PRECISION (int ) ;
 scalar_t__ VECTOR_TYPE ;
 scalar_t__ VOID_TYPE ;
 int comptypes (int ,int ,int) ;
 scalar_t__ vector_types_convertible_p (int ,int ,int) ;

int
ptr_reasonably_similar (tree to, tree from)
{
  for (; ; to = TREE_TYPE (to), from = TREE_TYPE (from))
    {

      if (TREE_CODE (to) == VOID_TYPE
   || TREE_CODE (from) == VOID_TYPE)
 return 1;

      if (TREE_CODE (to) != TREE_CODE (from))
 return 0;

      if (TREE_CODE (from) == OFFSET_TYPE
   && comptypes (TYPE_OFFSET_BASETYPE (to),
   TYPE_OFFSET_BASETYPE (from),
   COMPARE_BASE | COMPARE_DERIVED))
 continue;

      if (TREE_CODE (to) == VECTOR_TYPE
   && vector_types_convertible_p (to, from, 0))
 return 1;

      if (TREE_CODE (to) == INTEGER_TYPE
   && TYPE_PRECISION (to) == TYPE_PRECISION (from))
 return 1;

      if (TREE_CODE (to) == FUNCTION_TYPE)
 return 1;

      if (TREE_CODE (to) != POINTER_TYPE)
 return comptypes
   (TYPE_MAIN_VARIANT (to), TYPE_MAIN_VARIANT (from),
    COMPARE_BASE | COMPARE_DERIVED);
    }
}
