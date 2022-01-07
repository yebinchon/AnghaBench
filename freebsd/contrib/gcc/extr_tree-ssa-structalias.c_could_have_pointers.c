
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 scalar_t__ AGGREGATE_TYPE_P (int ) ;
 scalar_t__ COMPLEX_TYPE ;
 scalar_t__ POINTER_TYPE_P (int ) ;
 scalar_t__ TREE_CODE (int ) ;
 int TREE_TYPE (int ) ;

__attribute__((used)) static bool
could_have_pointers (tree t)
{
  tree type = TREE_TYPE (t);

  if (POINTER_TYPE_P (type)
      || AGGREGATE_TYPE_P (type)
      || TREE_CODE (type) == COMPLEX_TYPE)
    return 1;

  return 0;
}
